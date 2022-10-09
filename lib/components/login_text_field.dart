import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextFormField(
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            fillColor: const Color(0xFFFAFAFA),
            hintText: "Username",
            hintStyle:
                TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.2)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    );
  }
}
