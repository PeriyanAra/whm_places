import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/presentation/common/blocs/connectivity_bloc/connectivity_bloc.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/theme/extensions/app_bar_theme.dart';

class ConnectivityAppBar extends StatefulWidget {
  const ConnectivityAppBar({super.key});

  @override
  State<ConnectivityAppBar> createState() => _ConnectivityAppBarState();
}

class _ConnectivityAppBarState extends State<ConnectivityAppBar> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityBloc, ConnectivityState>(
      builder: (context, state) {
        final isConnected = state is ConnectivityConnectedState;
        final appBarTheme = WhmAppBarTheme(colorTheme: context.colorTheme);
        isVisible = state.isMessageVisible;

        return AnimatedOpacity(
          opacity: isVisible ? 1 : 0,
          duration: const Duration(milliseconds: 250),
          child: AnimatedContainer(
            height: isVisible
                ? appBarTheme.connectivityAppBarHeight + MediaQuery.of(context).padding.top
                : 0,
            duration: const Duration(milliseconds: 250),
            color: isConnected ? appBarTheme.connectivityBarColor : context.colorTheme.error,
            child: AppBar(
              elevation: 0,
              titleSpacing: 0,
              backgroundColor: appBarTheme.transparent,
              automaticallyImplyLeading: false,
              toolbarHeight: isVisible ? appBarTheme.connectivityAppBarHeight : 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              centerTitle: true,
              title: Padding(
                padding: appBarTheme.titlePadding,
                child: Text(
                  isConnected ? 'connectivityBackMessage'.tr() : 'connectivityLostMessage'.tr(),
                  style: context.textTheme.title2(context).copyWith(
                        fontWeight: FontWeight.normal,
                        color: appBarTheme.connectivityBarTextColor,
                      ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
