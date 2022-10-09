import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/back_button.dart';
import '../../../../components/instagram_logo.dart';
import '../../../../components/login_text_field.dart';
import '../../../../constants/app_constants.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const InstagramBackButton(),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const InstagramLogo(),
            largeVerticalSpacing(extraHeight: 24),
            LoginTextField(
              controller: controller.usernameController,
            ),
            smallVerticalSpacing,
            LoginTextField(
              controller: controller.passwordController,
            )
          ]),
        ));
  }
}
