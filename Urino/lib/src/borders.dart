import 'package:flutter/material.dart';
import 'package:urino/src/app_color.dart';

final radius = BorderRadius.all(Radius.circular(3));
final radius2 = BorderRadius.circular(3);
final radius3 = BorderRadius.all(Radius.circular(4));
final radius4 = BorderRadius.circular(4);
final borders = BorderSide(width: 1, color: forBorders);
final focusBorders = BorderSide(width: 1, color: blueColors);
final errorBorders = BorderSide(width: 1, color: redColors);

final styleForContainer =
    BoxDecoration(borderRadius: radius4, color: whiteColors);
final styleBorderOnDialog = BoxDecoration(border: Border(
    top: BorderSide(
        color: blueColors,
        width:1,
    ),
));
final styleForBorder =
    OutlineInputBorder(borderSide: borders, borderRadius: radius);
final styleForBorder2 =
    OutlineInputBorder(borderSide: borders, borderRadius: radius);
final styleFocus =
    OutlineInputBorder(borderSide: focusBorders, borderRadius: radius);
final styleError =
    OutlineInputBorder(borderSide: errorBorders, borderRadius: radius);
