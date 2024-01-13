import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whm_places/presentation/common/constants/assets_paths.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets/error_content.dart';
import 'package:whm_places/presentation/common/widgets/hbox.dart';
import 'package:whm_places/presentation/common/widgets/wbox.dart';
import 'package:whm_places/presentation/common/widgets/whm_loader.dart';
import 'package:whm_places/presentation/place_detail/bloc/place_detail_screen_bloc.dart';
import 'package:whm_places/presentation/place_detail/widgets/map_location_section.dart';
import 'package:whm_places/presentation/place_detail/widgets/picture_sliver_delegate.dart';
import 'package:whm_places/presentation/theme/extensions/place_detail_screen_theme.dart';
import 'package:whm_places/presentation/theme/theme.dart';

class PlaceDetailScreenContentBuilder extends StatelessWidget {
  const PlaceDetailScreenContentBuilder({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final placeDetailScreenTheme = PlaceDetailScreenTheme.of(context);

    return BlocBuilder<PlaceDetailScreenBloc, PlaceDetailScreenBlocState>(
      builder: (context, state) {
        return state.maybeMap(
          loading: (value) => const WhmLoader(),
          loaded: (data) {
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    delegate: PictureSliverDelegate(
                      imagePath: data.placeDetailViewModel.imagePath,
                      index: index,
                      maxHeight: MediaQuery.of(context).size.height / 3.5,
                      minHeight: placeDetailScreenTheme.appBarMaxHeight,
                    ),
                    pinned: true,
                    floating: true,
                  ),
                  SliverPadding(
                    padding: placeDetailScreenTheme.screenPadding,
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data.placeDetailViewModel.title,
                                style: context.textTheme.title1Bold(context),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: placeDetailScreenTheme.distance,
                                    size: placeDetailScreenTheme.locationIconSize,
                                  ),
                                  if (data.placeDetailViewModel.distanceViewModel != null)
                                    Text(
                                      '${data.placeDetailViewModel.distanceViewModel?.distance} ${data.placeDetailViewModel.distanceViewModel?.measureType.name}',
                                      style: context.textTheme
                                          .detail(context)
                                          .copyWith(color: placeDetailScreenTheme.distance),
                                    ),
                                ],
                              ),
                            ],
                          ),
                          const HBox(5.0),
                          Row(
                            children: [
                              Text(
                                'difficultyText'.tr(),
                                style: context.textTheme.detail(context).copyWith(
                                      color: placeDetailScreenTheme.distance,
                                    ),
                              ),
                              const WBox(5.0),
                              ...List.generate(
                                3,
                                (index) => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  child: SvgPicture.asset(
                                    AssetsPaths.hexEmptyIcon,
                                    width: placeDetailScreenTheme.hexEmptyIconSize,
                                    colorFilter: index + 1 <= data.placeDetailViewModel.difficulty
                                        ? null
                                        : placeDetailScreenTheme.hexEmptyIconColorFilter,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const HBox(45.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'placeDetailsLabel'.tr(),
                                style: context.textTheme.title2(context).copyWith(
                                      fontSize: 20.0,
                                    ),
                              ),
                              const HBox(18.0),
                              Text(
                                data.placeDetailViewModel.description,
                                style: context.textTheme.detail(context).copyWith(
                                      color: placeDetailScreenTheme.distance,
                                      fontSize: 14.0,
                                      height: 1.5,
                                    ),
                              ),
                            ],
                          ),
                          const HBox(45.0),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'recommendedChallengesText'.tr(),
                                  style: context.textTheme.title2(context).copyWith(fontSize: 20.0),
                                ),
                                const HBox(18.0),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: placeDetailScreenTheme.recommendedChallengesStyle,
                                  child: Text(
                                    'hikeChallengesText'.tr(),
                                    style: context.textTheme.title2(context).copyWith(
                                          color: context.colorTheme.primary,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                const HBox(18.0),
                                Text(
                                  'location'.tr(),
                                  style: context.textTheme.title2(context).copyWith(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                          MapLocationSection(
                            latitude: data.placeDetailViewModel.latitude,
                            longitude: data.placeDetailViewModel.longitude,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error) => ErrorContent(text: error.errorMessage),
          orElse: SizedBox.shrink,
        );
      },
    );
  }
}
