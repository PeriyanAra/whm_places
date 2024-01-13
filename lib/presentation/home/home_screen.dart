import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/core/di/register_app_dependencies.dart';
import 'package:whm_places/presentation/common/widgets/connectivity_wrapper.dart';
import 'package:whm_places/presentation/home/bloc/home_screen_bloc.dart';
import 'package:whm_places/presentation/home/content/home_screen_content_builder.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider.value(
      value: get<HomeScreenBloc>()
        ..add(
          const HomeScreenEvent.getData(),
        ),
      child: const ConnectivityWrapper(
        child: HomeScreenContentBuilder(),
      ),
    );
  }
}
