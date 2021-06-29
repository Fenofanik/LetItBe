import 'package:flutter/material.dart';
import 'package:urino/core/controllers/registration_controller.dart';
import 'package:urino/core/ui/states/base_stateless_screen.dart';
import 'package:urino/core/utils/appBar.dart';
import 'package:urino/src/borders.dart';
import 'package:urino/src/button_style.dart';
import 'package:get/get.dart';
import 'package:urino/src/text_styles.dart';

class EditScreen extends BaseStatelessScreen {
  final RegistrationController registrationController = Get.put(RegistrationController());

  @override
  Widget buildBody(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:20,right:20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:18),
              child: TextFormField(
                onSaved: (value){
                  registrationController.doctorId = value!;
                },
                validator: (value){
                  return registrationController.validateId(value!);
                },
                controller: registrationController.doctorIdController,
                decoration: InputDecoration(
                    labelText: "Doctor ID",
                    errorStyle: errorText,
                    enabledBorder: styleForBorder,
                    focusedBorder: styleFocus,
                    errorBorder: styleError,
                    focusedErrorBorder: styleError
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: TextFormField(
                onSaved: (value){
                  registrationController.patientId = value!;
                },
                validator: (value){
                  return registrationController.validateId(value!);
                },
                controller: registrationController.patientIdController,
                decoration: InputDecoration(
                    labelText: "Patient ID",
                    errorStyle: errorText,
                    enabledBorder: styleForBorder,
                    focusedBorder: styleFocus,
                    errorBorder: styleError,
                    focusedErrorBorder: styleError
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:18),
              child: TextFormField(
                onSaved: (value){
                  registrationController.deviceId = value!;
                },
                validator: (value){
                  return registrationController.validateId(value!);
                },
                controller: registrationController.deviceIdController,
                decoration: InputDecoration(
                    labelText: "Device ID",
                    errorStyle: errorText,
                    enabledBorder: styleForBorder,
                    focusedBorder: styleFocus,
                    errorBorder: styleError,
                    focusedErrorBorder: styleError
                ),
              ),
            ),
            Expanded(child: Container(),),
            Container(
              margin: const EdgeInsets.only(bottom: 48),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/13,
              child: ElevatedButton(onPressed: (){
                registrationController.checkId();
              },
                  child: Text('Save'),
                  style : buttonStyle),
            ),
          ],

        ),
    );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return getAppBar(context, "Edit");
  }
}