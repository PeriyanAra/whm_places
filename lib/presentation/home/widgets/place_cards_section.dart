import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:whm_places/presentation/home/view_models/place_card_view_model.dart';
import 'package:whm_places/presentation/home/widgets/place_card.dart';
import 'package:whm_places/presentation/router/app_router.dart';
import 'package:whm_places/presentation/theme/theme.dart';

class PlaceCardsSection extends StatelessWidget {
  const PlaceCardsSection({
    required this.placeCards,
    super.key,
  });

  final List<PlaceCardViewModel> placeCards;

  @override
  Widget build(BuildContext context) {
    final cardTheme = WhmPlaceCardTheme.of(context);
    var padding = WhmPlaceCardTheme.of(context).placeCardPadding;

    return SliverList.builder(
      itemCount: placeCards.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          padding = cardTheme.placeCardTopPadding.copyWith(
            top: cardTheme.placeCardTopPadding.top,
          );
        } else if (index == placeCards.length - 1) {
          padding = cardTheme.placeCardBottomPadding;
        } else {
          padding = cardTheme.placeCardPadding;
        }

        return Padding(
          padding: padding,
          child: PlaceCard(
            index: index,
            onTap: () => context.router.push(
              PlaceDetailRoute(
                index: index,
                id: placeCards[index].id,
              ),
            ),
            viewModel: placeCards[index],
          ),
        );
      },
    );
  }
}
