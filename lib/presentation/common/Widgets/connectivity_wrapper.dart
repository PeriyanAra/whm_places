import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/presentation/common/blocs/connectivity_bloc/connectivity_bloc.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets/connectivity_app_bar.dart';
import 'package:whm_places/presentation/theme/extensions/app_bar_theme.dart';

class ConnectivityWrapper extends StatelessWidget {
  const ConnectivityWrapper({
    required this.child,
    this.isMessageVisible = true,
    super.key,
  });

  final Widget child;
  final bool isMessageVisible;

  @override
  Widget build(BuildContext context) {
    final appBarTheme = WhmAppBarTheme(colorTheme: context.colorTheme);

    return BlocBuilder<ConnectivityBloc, ConnectivityState>(
      builder: (context, state) {
        return Scaffold(
          appBar: state.isMessageVisible && isMessageVisible
              ? PreferredSize(
                  preferredSize: Size.fromHeight(appBarTheme.connectivityAppBarHeight),
                  child: const ConnectivityAppBar(),
                )
              : null,
          body: child,
        );
      },
    );
  }
}
