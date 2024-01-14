import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/app/services/auth_service.dart';

class LoginController extends GetxController {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  final isEnabled = false.obs;
  final errorMsg = "".obs;
  final obscureText = true.obs;

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    usernameController.addListener(validateForm);
    passwordController.addListener(validateForm);
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void validateForm() {
    if (usernameController.text.isEmail &&
        passwordController.text.isNotEmpty &&
        passwordController.text.length >= 8) {
      isEnabled.value = true;
    } else if (passwordController.text.length < 8) {
      isEnabled.value = false;
    }
    errorMsg.value = '';
  }

  Future<void> handleLoginTap() async {
    errorMsg.value = await Get.find<AuthService>().loginWithEmailAndPassword(
            usernameController.text, passwordController.text) ??
        '';
  }
}
