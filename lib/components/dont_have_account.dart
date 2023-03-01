import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../app/routes/app_pages.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        20.heightBox,
        "Don't have an account?"
            .richText
            .color(
                Get.isDarkMode ? Colors.white : Colors.black.withOpacity(0.4))
            .withTextSpanChildren([
          " Sign up."
              .textSpan
              .tap(() {
                Get.offAllNamed(Routes.register);
              })
              .semiBold
              .color(Get.isDarkMode ? Colors.white : Colors.black)
              .make()
        ]).make(),
        60.heightBox
      ],
    );
  }
}
