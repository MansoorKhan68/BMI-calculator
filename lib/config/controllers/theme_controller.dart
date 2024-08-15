import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  void changeTheme() async {
    // change the value of variable 
    // to true if it is false and vice versa
    isDark.value = !isDark.value;
    // changethemeMode is the getx function
    // which change the whole theme of the app
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

}