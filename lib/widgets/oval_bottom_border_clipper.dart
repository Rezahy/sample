import 'package:flutter/material.dart';

class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, h - 70); //2
    path.quadraticBezierTo(w * 0.5, h, w, h - 70);
    path.lineTo(w, 0); //5
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
