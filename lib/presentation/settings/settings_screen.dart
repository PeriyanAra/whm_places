import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/core/di/register_app_dependencies.dart';
import 'package:whm_places/presentation/settings/bloc/settings_screen_bloc.dart';
import 'package:whm_places/presentation/settings/content/settings_screen_content_builder.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: get<SettingsScreenBloc>()..add(const SettingsScreenEvent.getData()),
      child: const SettingsScreenContentBuilder(),
    );
  }
}
