import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

import '../app_constant.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int? maxLength;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Function()? onTap;
  final Function()? onIconTap;
  final List<LengthLimitingTextInputFormatter> inputFormatters;
  final TextCapitalization;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLength,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onTap,
    this.onIconTap,
    required this.inputFormatters,
    this.TextCapitalization,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        maxLength: widget.maxLength,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        onTap: widget.onTap,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(widget.prefixIcon),
                )
              : null,
          suffixIcon: widget.suffixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                      onTap: widget.onIconTap, child: Icon(widget.suffixIcon)),
                )
              : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: appPrimaryColor,
                width: 1,
              )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appPrimaryColor, width: 0.5)),
        ),
      ),
    );
  }
}
