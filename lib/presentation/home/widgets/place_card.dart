import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/widgets.dart';
import 'package:whm_places/presentation/home/view_models/place_card_view_model.dart';
import 'package:whm_places/presentation/home/widgets/place_card_image.dart';
import 'package:whm_places/presentation/home/widgets/place_card_info.dart';
import 'package:whm_places/presentation/theme/extensions/whm_place_card_theme.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    required this.index,
    required this.onTap,
    required this.viewModel,
    super.key,
  });

  final int index;
  final VoidCallback onTap;
  final PlaceCardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final cardTheme = WhmPlaceCardTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: cardTheme.contentPadding,
        decoration: cardTheme.boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlaceCardImage(
              imageUrl: viewModel.imageUrl,
              index: index,
            ),
            HBox(cardTheme.heightBoxSmallSize),
            PlaceCardInfo(
              onTapGoButton: () {},
              placeCardViewModel: viewModel,
            ),
          ],
        ),
      ),
    );
  }
}
