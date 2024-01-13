import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets.dart';
import 'package:whm_places/presentation/common/widgets/error_content.dart';
import 'package:whm_places/presentation/common/widgets/whm_loader.dart';
import 'package:whm_places/presentation/common/widgets/whm_sliver_delegate.dart';
import 'package:whm_places/presentation/common/widgets/whm_snack_bar_modal.dart';
import 'package:whm_places/presentation/home/bloc/home_screen_bloc.dart';
import 'package:whm_places/presentation/home/widgets/empty_content_info.dart';
import 'package:whm_places/presentation/home/widgets/place_cards_section.dart';
import 'package:whm_places/presentation/home/widgets/whm_search_bar.dart';
import 'package:whm_places/presentation/theme/theme.dart';

class HomeScreenContentBuilder extends StatefulWidget {
  const HomeScreenContentBuilder({super.key});

  @override
  State<HomeScreenContentBuilder> createState() => _HomeScreenContentBuilderState();
}

class _HomeScreenContentBuilderState extends State<HomeScreenContentBuilder> {
  late final TextEditingController _textController;
  late final FocusNode _focusNode;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchBarTheme = WhmSearchBarTheme.of(context);

    return GestureDetector(
      onTap: () => _focusNode.unfocus(),
      child: Scaffold(
        appBar: WhmAppBar(
          text: 'homeAppBarTitle'.tr(),
          hasShadow: false,
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverPersistentHeader(
                delegate: WhmSliverDelegate(
                  minHeight: searchBarTheme.searchBarHeight,
                  maxHeight: searchBarTheme.searchBarHeight,
                  child: WhmSearchBar(
                    onChanged: _onSearch,
                    focusNode: _focusNode,
                    textEditingController: _textController,
                    onCloseButtonTap: _onCloseButtonTap,
                  ),
                ),
                floating: true,
              ),
            ];
          },
          body: RefreshIndicator(
            onRefresh: _onRefresh,
            child: CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                BlocConsumer<HomeScreenBloc, HomeScreenState>(
                  listenWhen: (previous, current) =>
                      current is HomeScreenErrorState && current.showModal,
                  listener: (context, state) =>
                      _showErrorSnackBar((state as HomeScreenErrorState).errorMessage),
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const SliverToBoxAdapter(
                        child: WhmLoader(),
                      ),
                      loaded: (viewModel) {
                        final placeCards = viewModel.isSearchStarted
                            ? viewModel.searchedCards
                            : viewModel.placeCards;

                        return placeCards.isNotEmpty
                            ? PlaceCardsSection(
                                placeCards: placeCards,
                              )
                            : const SliverToBoxAdapter(
                                child: Center(
                                  child: EmptyContentInfo(),
                                ),
                              );
                      },
                      error: (error, _) => SliverToBoxAdapter(
                        child: ErrorContent(text: error),
                      ),
                      orElse: () => const SliverToBoxAdapter(
                        child: SizedBox.shrink(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showErrorSnackBar(String errorText) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: context.colorTheme.error,
        content: WhmSnackBarModal(
          text: errorText,
        ),
      ),
    );
  }

  Future<void> _onRefresh() {
    final completer = Completer<void>();

    context.read<HomeScreenBloc>().add(
          HomeScreenEvent.refreshData(
            onFinished: completer.complete,
          ),
        );

    return completer.future;
  }

  void _onSearch(String text) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    _debounce = Timer(
      const Duration(milliseconds: 500),
      () {
        context.read<HomeScreenBloc>().add(
              HomeScreenEvent.search(searchText: text),
            );
      },
    );
  }

  void _onCloseButtonTap() {
    context.read<HomeScreenBloc>().add(
          const HomeScreenEvent.getData(),
        );
  }
}
