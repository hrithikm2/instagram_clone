import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.obscureText = false})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        smartDashesType: SmartDashesType.enabled,
        cursorHeight: 14,
        controller: controller,
        obscureText: obscureText,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          fillColor: const Color(0xFFFAFAFA),
          hintText: hintText,
          filled: true,
          hintStyle:
              TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.2)),
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black.withOpacity(0.1), width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black.withOpacity(0.1), width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black.withOpacity(0.1), width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black.withOpacity(0.1), width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black.withOpacity(0.2), width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
