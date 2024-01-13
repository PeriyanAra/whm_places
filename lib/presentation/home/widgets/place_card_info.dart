import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets/whm_word_search.dart';
import 'package:whm_places/presentation/home/view_models/place_card_view_model.dart';
import 'package:whm_places/presentation/home/widgets/place_card_go_button.dart';

class PlaceCardInfo extends StatelessWidget {
  const PlaceCardInfo({
    required this.placeCardViewModel,
    required this.onTapGoButton,
    super.key,
  });

  final PlaceCardViewModel placeCardViewModel;

  final VoidCallback onTapGoButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WhmWordSearch(
              text: placeCardViewModel.placeName,
              searchText: placeCardViewModel.searchedText,
            ),
            if (placeCardViewModel.distanceViewModel != null)
              Text(
                '${'distanceText'.tr()} ${placeCardViewModel.distanceViewModel!.distance} ${placeCardViewModel.distanceViewModel!.measureType.name}',
                style: context.textTheme.detail(context),
              ),
          ],
        ),
        PlaceCardGoButton(onTap: onTapGoButton),
      ],
    );
  }
}
