import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/color/color_contants.dart';

class Custom_Button extends StatefulWidget {
  Custom_Button(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontColor,
      this.fillColor,
      this.height,
      this.width,
      this.radius,
      this.color,
      this.borderColor,
      this.padding,
      this.margin,
      required this.onTap});
  final String text;
  final double? fontSize;
  final Color? fontColor;
  final Color? fillColor;
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final Color? borderColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Function() onTap;
  @override
  State<Custom_Button> createState() => _Custom_ButtonState();
}

class _Custom_ButtonState extends State<Custom_Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: widget.height ?? 44,
        width: widget.width ?? MediaQuery.of(context).size.width,
        padding: widget.padding ??
            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: widget.fillColor ?? ColorConstants.btnColor,
            border: Border.all(color: widget.borderColor ?? ColorConstants.btnColor),
            borderRadius: BorderRadius.circular(widget.radius ?? 50)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: widget.fontSize ?? 17,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
