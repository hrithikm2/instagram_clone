import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class InstagramLogo extends StatelessWidget {
  const InstagramLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Get.isDarkMode
        ? SvgPicture.asset(
            "assets/images/text_logo_dark.svg",
          )
        : SvgPicture.asset('assets/images/text_logo.svg');
  }
}
