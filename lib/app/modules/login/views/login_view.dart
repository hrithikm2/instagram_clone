import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../components/back_button.dart';
import '../../../../components/instagram_logo.dart';
import '../../../../components/login_button.dart';
import '../../../../components/login_form.dart';
import '../../../../constants/app_constants.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    return GestureDetector(
      onTap: () => Get.focusScope?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: const InstagramBackButton(),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Obx(
            () => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const InstagramLogo(),
                  largeVerticalSpacing(extraHeight: 24),
                  LoginForm(
                    usernameController: controller.usernameController,
                    passwordController: controller.passwordController,
                    obscureText: controller.obscureText.value,
                  ),
                  if (controller.errorMsg.isNotEmpty) ...[
                    smallVerticalSpacing,
                    controller.errorMsg.value.text.red500.make(),
                    smallVerticalSpacing,
                  ],
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: "Forgot password?".text.make(),
                    ),
                  ),
                  mediumVerticalSpacing,
                  LoginButton(
                    onPressed: () => controller.handleLoginTap(),
                    isEnabled: controller.isEnabled.value,
                  ),
                ]).p16(),
          ),
        ),
      ),
    );
  }
}
