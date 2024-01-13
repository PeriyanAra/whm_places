import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whm_places/presentation/common/constants/assets_paths.dart';
import 'package:whm_places/presentation/place_detail/widgets/picture_bottom_clipper.dart';
import 'package:whm_places/presentation/theme/extensions/place_detail_screen_theme.dart';

class PictureSliverDelegate extends SliverPersistentHeaderDelegate {
  PictureSliverDelegate({
    required this.imagePath,
    required this.index,
    required this.minHeight,
    required this.maxHeight,
  });

  final String imagePath;
  final int index;
  final double maxHeight;
  final double minHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final placeDetailScreenTheme = PlaceDetailScreenTheme.of(context);

    return Stack(
      children: [
        Hero(
          tag: 'heroAnim-$index',
          child: ClipPath(
            clipper: PictureBottomClipper(),
            child: Image.network(
              imagePath,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: placeDetailScreenTheme.screenPadding.left,
          ),
          height: placeDetailScreenTheme.appBarMaxHeight,
          child: GestureDetector(
            onTap: () => context.router.pop(),
            child: SvgPicture.asset(
              AssetsPaths.backIcon,
              width: placeDetailScreenTheme.backIconSize,
              colorFilter: placeDetailScreenTheme.backIconColorFilter,
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
