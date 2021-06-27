import 'package:flutter/material.dart';
import 'package:urino/core/controllers/splash_controller.dart';
import 'package:urino/core/ui/states/base_stateless_screen.dart';
import 'package:get/get.dart';
import 'package:urino/src/text_styles.dart';

class SplashScreen extends BaseStatelessScreen {
  final splashController = Get.put(SplashController());

  @override
  Widget buildBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child:Text('Uro Genie',style: elevatedButtonPatient,)
      ),
    );
  }
  PreferredSizeWidget? buildAppBar(BuildContext context){
    PreferredSize(child: Container(), preferredSize: Size(0.0,0.0));
  }
}