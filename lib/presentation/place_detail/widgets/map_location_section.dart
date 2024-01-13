import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whm_places/presentation/common/helpers/alert_dialog_helper.dart';
import 'package:whm_places/presentation/common/services/location_service.dart';
import 'package:whm_places/presentation/theme/extensions/extensions.dart';

class MapLocationSection extends StatefulWidget {
  const MapLocationSection({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  final double latitude;
  final double longitude;

  @override
  State<MapLocationSection> createState() => _MapLocationSectionState();
}

class _MapLocationSectionState extends State<MapLocationSection> {
  late CameraPosition _mapPosition;

  @override
  void initState() {
    super.initState();
    _mapPosition = CameraPosition(
      bearing: 180.0,
      target: LatLng(
        widget.latitude,
        widget.longitude,
      ),
      tilt: 60.0,
      zoom: 20.0,
    );
  }

  Future<void> _openMapsApp(double latitude, double longitude) async {
    final url = Platform.isIOS
        ? 'http://maps.apple.com/?ll=$latitude,$longitude'
        : 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    try {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final placeDetailScreenTheme = PlaceDetailScreenTheme.of(context);

    return SafeArea(
      child: SizedBox(
        height: placeDetailScreenTheme.mapHeight,
        child: GoogleMap(
          initialCameraPosition: _mapPosition,
          myLocationButtonEnabled: false,
          compassEnabled: false,
          mapToolbarEnabled: false,
          onTap: _onMapTap,
          markers: <Marker>{
            Marker(
              markerId: const MarkerId('custom_marker_id'),
              position: LatLng(widget.latitude, widget.longitude),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRed,
              ),
            ),
          },
        ),
      ),
    );
  }

  Future<void> _onMapTap(LatLng _) async {
    final status = await LocationService.checkPermission();
    if (status == LocationPermission.deniedForever && mounted) {
      await AlertDialogHelper.showAlertDialog<void>(
        context,
        message: 'enableLocationServices'.tr(),
      );
    } else if (status == LocationPermission.denied && mounted) {
      await AlertDialogHelper.showAlertDialog<void>(
        context,
        message: 'enableLocationPermission'.tr(),
      );
    } else if (status == LocationPermission.whileInUse) {
      await _openMapsApp(widget.latitude, widget.longitude);
    }
  }
}
