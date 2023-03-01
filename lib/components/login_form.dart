import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import 'login_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });
  final TextEditingController usernameController, passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          LoginTextField(
            controller: usernameController,
            hintText: "Username or Email",
          ),
          smallVerticalSpacing,
          LoginTextField(
            controller: passwordController,
            hintText: "Password",
          ),
        ],
      ),
    );
  }
}
