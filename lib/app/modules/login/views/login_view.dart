import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../components/back_button.dart';
import '../../../../components/instagram_logo.dart';
import '../../../../components/login_button.dart';
import '../../../../components/login_form.dart';
import '../../../../constants/app_constants.dart';
import '../../../routes/app_pages.dart';
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const InstagramLogo(),
                  largeVerticalSpacing(extraHeight: 24),
                  LoginForm(
                    usernameController: controller.usernameController,
                    passwordController: controller.passwordController,
                  ),
                  mediumVerticalSpacing,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: "Forgot password?".text.make(),
                    ),
                  ),
                  mediumVerticalSpacing,
                  Obx(
                    () => LoginButton(
                      onPressed: () => Get.toNamed(Routes.login),
                      isEnabled: controller.isEnabled.value,
                    ),
                  ),
                ]).p16(),
          )),
    );
  }
}
