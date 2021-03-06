import 'package:flutter/material.dart';
import 'package:urino/src/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urino/src/borders.dart';
import 'package:urino/src/text_styles.dart';
import 'package:get/get.dart';

AppBar getAppBar(BuildContext context, String title) {

  return AppBar(
    title: Text(title),
    leading: BackButton(color: forBorders),
    actions: [
      Icon(Icons.phone_android_outlined),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_forward,
            color: appBarArrow,
            size: 15,
          ),
          Icon(
            Icons.arrow_back,
            color: appBarArrow,
            size: 15,
          )
        ],
      ),
      IconButton(
          icon: SvgPicture.asset(
            'assets/svg_icons/micro_chip.svg',
            width: 26.11,
            height: 26.11,
          ),
          onPressed: () {
            dialog();
          }),
    ],
  );
}
dialog() {
  return Get.defaultDialog(
      title: "Connect device",
      titleStyle: dialogInfo,
      backgroundColor: background,
      content: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6),
        child: Column(
          children: [
            Container(
              decoration: styleForContainer,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Device name',
                      style: deviceNames,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Connect',
                          style: forTextButton,
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33),
              child: Container(decoration: styleBorderOnDialog),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Cancel',
                    style: forTextButton,
                  )),
            )
          ],
        ),
      ));
}