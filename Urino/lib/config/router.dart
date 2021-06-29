import 'package:get/get.dart';
import 'package:urino/view/screens/edit.dart';
import 'package:urino/view/screens/info.dart';
import 'package:urino/view/screens/registration.dart';
import 'package:urino/view/screens/splash.dart';
import 'package:urino/view/screens/start.dart';


class AppPages{
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/start', page: () => StartScreen()),
    GetPage(name: '/info', page: () => InfoScreen(doctorId:'',deviceId:'',patientId:'')),
    GetPage(name: '/edit', page: () => EditScreen()),
    GetPage(name: '/reg', page: () => RegistrationScreen()),
  ];
}