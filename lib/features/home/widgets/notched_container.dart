import 'package:flutter/material.dart';

class EllipticalNotchedClipper extends CustomClipper<Path> {
  final double notchWidth;
  final double notchHeight;
  final double cornerRadius;

  EllipticalNotchedClipper({
    this.notchWidth = 40,
    this.notchHeight = 15,
    this.cornerRadius = 16,
  });

  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width;
    final h = size.height;

    final notchCenter = w / 2;
    final notchHalfWidth = notchWidth / 2;
    final notchBottom = notchHeight;

    // Start at top-left corner
    path.moveTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    // Line to notch start
    path.lineTo(notchCenter - notchHalfWidth, 0);

    // Elliptical inward notch (semi-ellipse inward)
    path.quadraticBezierTo(
      notchCenter,
      notchBottom,
      notchCenter + notchHalfWidth,
      0,
    );

    // Line to top-right corner
    path.lineTo(w - cornerRadius, 0);
    path.quadraticBezierTo(w, 0, w, cornerRadius);

    // Down to bottom
    path.lineTo(w, h);
    path.lineTo(0, h);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class CenterNotchedClipper extends CustomClipper<Path> {
  final double notchWidth;
  final double notchHeight;
  final double cornerRadius;

  CenterNotchedClipper({
    this.notchWidth = 60,
    this.notchHeight = 12,
    this.cornerRadius = 16,
  });

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    final center = width / 2;

    final notchHalfWidth = notchWidth / 2;
    final notchDepth = notchHeight;

    final path = Path();

    // Start at left corner
    path.moveTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    // Line to left of notch
    path.lineTo(center - notchHalfWidth, 0);

    // Draw elliptical inward notch
    path.quadraticBezierTo(
      center,
      notchDepth,
      center + notchHalfWidth,
      0,
    );

    // Continue to right corner
    path.lineTo(width - cornerRadius, 0);
    path.quadraticBezierTo(width, 0, width, cornerRadius);

    // Down to bottom
    // path.lineTo(width, height);
    // path.lineTo(0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
