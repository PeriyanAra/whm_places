import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/core/di/register_app_dependencies.dart';
import 'package:whm_places/presentation/place_detail/bloc/place_detail_screen_bloc.dart';
import 'package:whm_places/presentation/place_detail/content/place_detail_screen_content_builder.dart';

@RoutePage()
class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({
    required this.index,
    required this.id,
    super.key,
  });

  final int index;
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: get<PlaceDetailScreenBloc>()
        ..add(
          PlaceDetailScreenEvent.getData(
            id: id,
          ),
        ),
      child: PlaceDetailScreenContentBuilder(index: index),
    );
  }
}
