import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget smallVerticalSpacing = const HeightBox(12);
Widget mediumVerticalSpacing = const HeightBox(16);
Widget largeVerticalSpacing({double extraHeight = 0}) =>
    HeightBox(24.0 + extraHeight);
