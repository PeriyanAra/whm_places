import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/core/di/register_app_dependencies.dart';
import 'package:whm_places/presentation/common/blocs/blocs.dart';

class BlocProvidersWrapper extends StatelessWidget {
  const BlocProvidersWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: get<ConnectivityBloc>()),
      ],
      child: child,
    );
  }
}
