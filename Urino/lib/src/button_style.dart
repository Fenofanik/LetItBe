import 'package:flutter/material.dart';
import 'package:urino/src/app_color.dart';
import 'package:urino/src/text_styles.dart';

final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(44));

final buttonStyle = ElevatedButton.styleFrom(
  shape: shape,
  primary: blueColors,
  textStyle:elevatedButtonDoctor
);
final buttonStyle2 = ElevatedButton.styleFrom(
    shape: shape,
    primary: whiteColors,
    textStyle:elevatedButtonPatient
);