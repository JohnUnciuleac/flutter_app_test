import 'package:flutter/material.dart';

final gradientCARing = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF552586),
      Color(0xFF552586),
      Color(0xFF804FB3),
    ],
    stops: [0.3, 0.6, 0.9],
  ),
);
