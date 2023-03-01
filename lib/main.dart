import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/modules/welcome/bindings/welcome_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black),
      title: "Application",
      initialBinding: WelcomeBinding(),
      initialRoute: AppPages.INITIAL,
      smartManagement: SmartManagement.full,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: const InputDecorationTheme(
            fillColor: Color.fromRGBO(0, 0, 0, 0.8),
          )),
    ),
  );
}
