import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urino/config/constant_routes.dart';
import 'package:urino/core/ui/states/base_stateless_screen.dart';
import 'package:urino/src/button_style.dart';
import 'package:get/get.dart';
import 'package:urino/src/text_styles.dart';

class StartScreen extends BaseStatelessScreen {

  @override
  Widget buildBody(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/13,
                child: ElevatedButton(
                  style: buttonStyle,
                  child: Text('Doctor'),
                  onPressed: () {
                    Get.toNamed(registration);
                  },),
              ),
            Padding(
              padding: const EdgeInsets.only(top:16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/13,
                child: ElevatedButton(
                  style: buttonStyle2,
                  child: Text('Patient',style: elevatedButtonPatient,),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      );
  }
  PreferredSizeWidget? buildAppBar(BuildContext context){
    PreferredSize(child: Container(), preferredSize: Size(0.0,0.0));
  }
}
