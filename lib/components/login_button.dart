import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, this.onPressed, required this.isEnabled});
  final void Function()? onPressed;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 44,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minWidth: context.safePercentWidth * 80,
      color: isEnabled
          ? const Color(0xff3797EF)
          : const Color(0xff3797EF).withOpacity(0.6),
      onPressed: onPressed,
      child: "Log in".text.white.bold.make(),
    );
  }
}
