import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

class PlaceCardImage extends StatelessWidget {
  const PlaceCardImage({
    required this.imageUrl,
    required this.index,
    super.key,
  });

  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final cardTheme = WhmPlaceCardTheme.of(context);

    return Hero(
      tag: 'heroAnim-$index',
      child: ClipRRect(
        borderRadius: cardTheme.borderRadius,
        child: Container(
          color:cardTheme.cardImageBackgroundColor,
          child: AspectRatio(
            aspectRatio: cardTheme.aspectRatio,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
              loadingBuilder:(context, child, loadingProgress) => child,
            ),
          ),
        ),
      ),
    );
  }
}
