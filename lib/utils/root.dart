import 'package:flutter/material.dart';
import 'package:abdnotefirebase/controllers/authController.dart';
import 'package:abdnotefirebase/screens/auth/login.dart';
import 'package:abdnotefirebase/screens/home/home.dart';
import 'package:get/get.dart';

class Root extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (authController != null && authController.user?.uid != null) {
          return HomePage();
        } else {
          return Login();
        }
      },
    );
  }
}
