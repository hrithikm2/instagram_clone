import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:instagram_clone/firebase_options.dart';

import 'app/routes/app_pages.dart';
import 'app/services/auth_service.dart';

void initService() {
  Get.lazyPut(() => AuthService());
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initService();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black),
      title: "Application",
      initialBinding: WelcomeBinding(),
      initialRoute: AppPages.initial,
      smartManagement: SmartManagement.full,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          fontFamily: "sf-pro",
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: const InputDecorationTheme(
            fillColor: Color.fromRGBO(0, 0, 0, 0.1),
          )),
    ),
  );
}
