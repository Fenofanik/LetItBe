import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urino/config/constant_routes.dart';
import 'package:urino/core/ui/states/base_stateless_screen.dart';
import 'package:urino/core/utils/appBar.dart';
import 'package:urino/src/borders.dart';
import 'package:urino/src/button_style.dart';
import 'package:urino/src/text_styles.dart';
import 'package:get/get.dart';

class InfoScreen extends BaseStatelessScreen {
  final doctorId;
  final patientId;
  final deviceId;
  InfoScreen({required this.doctorId,this.patientId,this.deviceId});

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: styleForContainer,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 12,top: 8,bottom: 8),
                        child: Column(
                          children: <Widget>[
                            Text('Doctor:',style: names,),
                            Padding(
                              padding: const EdgeInsets.only(top:12),
                              child: Text('Patient:',style: names,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:12),
                              child: Text('Device:',style: names,),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12,top: 8,bottom: 8),
                        child: Column(
                          children: <Widget>[
                            Text(doctorId,style: namesValues,),
                            Padding(
                              padding: const EdgeInsets.only(top:12),
                              child: Text(patientId,style: namesValues,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:12),
                              child: Text(deviceId,style: namesValues,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            Expanded(child: Container(),),
            Container(
                    margin: EdgeInsets.only(bottom: 48),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/13,
                    child: ElevatedButton(onPressed: (){
                      Get.toNamed(edit);
                    },
                        child: Text('Edit'),
                        style : buttonStyle),
                  ),

          ],
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return getAppBar(context, "Doctor");
  }
}