import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          fillColor: const Color.fromRGBO(0, 0, 0, 0.1),
          hintText: hintText,
          focusColor: const Color.fromRGBO(0, 0, 0, 0.1),
          filled: true,
          hintStyle:
              TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.2)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
