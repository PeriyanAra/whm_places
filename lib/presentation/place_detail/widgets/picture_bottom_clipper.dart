import 'package:flutter/material.dart';

class PictureBottomClipper extends CustomClipper<Path> {
  PictureBottomClipper({
    this.radius = 20,
  });

  final double radius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..quadraticBezierTo(
        size.width,
        size.height - radius,
        size.width - radius,
        size.height - radius,
      )
      ..lineTo(radius, size.height - radius)
      ..quadraticBezierTo(0, size.height - radius, 0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
