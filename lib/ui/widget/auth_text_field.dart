import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon icon;
  final double marginTop;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;

  const AuthTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      this.marginTop = 20,
      this.errorText,
      this.obscureText = false,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: marginTop,
        ),
        Text(hintText,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              style: const TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  errorText: errorText,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(top: 14),
                  prefixIcon: icon,
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Colors.black38)),
            ))
      ],
    );
  }
}
