import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_icons.dart';

class InstagramBackButton extends StatelessWidget {
  const InstagramBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: IconButton(
        icon: const Icon(InstagramIcons.back, color: Colors.black),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
