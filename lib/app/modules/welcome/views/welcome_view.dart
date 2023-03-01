import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/routes/app_pages.dart';
import 'package:instagram_clone/components/login_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../components/dont_have_account.dart';
import '../../../../components/instagram_logo.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InstagramLogo(),
              50.heightBox,
              Container(
                constraints: const BoxConstraints(
                    maxHeight: 85, maxWidth: 85, minHeight: 60, minWidth: 60),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5, color: Colors.black.withOpacity(0.1)),
                    shape: BoxShape.circle,
                    color: Colors.red,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/sample_user.jpg'))),
              ),
              10.heightBox,
              "riticccc"
                  .text
                  .color(!Get.isDarkMode ? Colors.black : Colors.white)
                  .bold
                  .make(),
              10.heightBox,
              LoginButton(
                onPressed: () => Get.toNamed(Routes.login),
                isEnabled: true,
              ),
              16.heightBox,
              TextButton(
                onPressed: () {},
                child: "Switch accounts".text.make(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const DontHaveAccount());
  }
}
