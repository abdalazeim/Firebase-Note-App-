import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:abdnotefirebase/controllers/authController.dart';
import 'package:abdnotefirebase/controllers/userController.dart';
import 'package:abdnotefirebase/utils/root.dart';
import 'package:abdnotefirebase/utils/theme.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put<AuthController>(AuthController());
    Get.put<UserController>(UserController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Note',
      theme: Themes().lightTheme,
      darkTheme: Themes().dartTheme,
      themeMode: ThemeMode.system,
      home: Root(),
    );
  }
}
