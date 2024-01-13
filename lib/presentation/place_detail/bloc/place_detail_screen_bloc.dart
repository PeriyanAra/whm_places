import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:whm_places/presentation/common/services/geolocator_service.dart';
import 'package:whm_places/presentation/common/services/location_service.dart';
import 'package:whm_places/presentation/home/view_models/place_detail_screen_view_model.dart';
import 'package:whm_places/repository/repository.dart';

part 'place_detail_screen_event.dart';
part 'place_detail_screen_state.dart';
part 'place_detail_screen_bloc.freezed.dart';

class PlaceDetailScreenBloc extends Bloc<PlaceDetailScreenEvent, PlaceDetailScreenBlocState> {
  PlaceDetailScreenBloc({
    required PlacesRepository placesRepository,
  })  : _placesRepository = placesRepository,
        super(const PlaceDetailScreenBlocState.loading()) {
    on<PlaceDetailScreenGetDataEvent>(_handlePlaceDetailScreenGetDataEvent);
  }
  final PlacesRepository _placesRepository;

  Future<void> _handlePlaceDetailScreenGetDataEvent(
    PlaceDetailScreenGetDataEvent event,
    Emitter<PlaceDetailScreenBlocState> emit,
  ) async {
    final response = await _placesRepository.getPlaceById(event.id);

    final permissionStatus = await LocationService.checkPermission();
    Position? currentLocation;

    if (permissionStatus == LocationPermission.whileInUse) {
      currentLocation = await Geolocator.getCurrentPosition();
    }
    response.when(
      success: (placeDto) {
        var placeDetails = PlaceDetailViewModel.fromDto(placeDto);

        if (currentLocation != null && permissionStatus == LocationPermission.whileInUse) {
          final distanceViewModel = GeolocatorService.getDistance(
            targetLatitude: double.tryParse(placeDto.latitude.toString()) ?? 0,
            targetLongitude: double.tryParse(placeDto.longitude.toString()) ?? 0,
            currentLocation: currentLocation,
          );

          placeDetails = placeDetails.copyWith(distanceViewModel: distanceViewModel);

          emit(
            PlaceDetailScreenBlocState.loaded(
              placeDetailViewModel: placeDetails,
            ),
          );

          return;
        }

        emit(
          PlaceDetailScreenBlocState.loaded(
            placeDetailViewModel: placeDetails,
          ),
        );
      },
      failure: (error) {
        emit(PlaceDetailScreenBlocState.error(errorMessage: error.toString()));
      },
    );
  }
}
