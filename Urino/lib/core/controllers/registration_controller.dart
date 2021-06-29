import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:urino/view/screens/info.dart';

class RegistrationController extends GetxController {
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController doctorIdController,
      patientIdController,
      deviceIdController;
  var doctorId = '';
  var patientId = '';
  var deviceId = '';

  @override
  void onInit() {
    super.onInit();
    doctorIdController = TextEditingController();
    patientIdController = TextEditingController();
    deviceIdController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    doctorIdController.dispose();
    patientIdController.dispose();
    deviceIdController.dispose();
  }

  String? validateId(String value) {
    if (value.length < 10 || value.length >= 11 || value.isAlphabetOnly) {
      return "Invalid ID, please put valid ID";
    }
    return null;
  }
  //  Get.snackbar("Invalid ID", "Please put valid ID",
   //  snackPosition: SnackPosition.BOTTOM);//

  void checkId() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
    Get.to(InfoScreen(
        doctorId:doctorId,
        patientId:patientId,
        deviceId:deviceId,));
  }
}
