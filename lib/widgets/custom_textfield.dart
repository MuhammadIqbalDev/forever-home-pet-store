// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fur_ever_homes/core/utils/size_utils.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final double height;
  final String hintText;
  final double width;
  final Widget? suffixIcon;
  final bool? obscureText;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.height = 50.0,
    required this.hintText,
    required this.width,
    this.suffixIcon,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // Set your constant width here
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[200], // Set your gray background color here
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          obscureText: obscureText ??false,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
