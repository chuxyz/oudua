// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

enum CustomInputBorder { outline, underline }

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.onChanged,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.obscureText,
    this.errorText,
    this.prefixIcon,
    this.maxLine,
    this.keyboardType,
    this.textInputAction,
    this.borderOutlined = false,
    Key? key,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final bool? obscureText;
  final String? errorText;
  final Widget? prefixIcon;
  final int? maxLine;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String) onChanged;
  final bool borderOutlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: TextFormField(
        maxLines: maxLine,
        autocorrect: true,
        keyboardType: keyboardType ?? TextInputType.visiblePassword,
        onChanged: onChanged,
        textInputAction: textInputAction,
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          hintText: hintText,
          labelText: labelText,
          errorText: errorText,
          prefixIcon: (prefixIcon == null)
              ? null
              : Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: prefixIcon,
                ),
          border: (borderOutlined)
              ? OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0),
                  borderRadius: BorderRadius.circular(5.0),
                )
              : null,
          focusedBorder: (borderOutlined)
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kThemeColor,
                    width: 2.0,
                  ),
                )
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kThemeColor,
                    width: 2.0,
                  ),
                ),
        ),
      ),
    );
  }

  static Widget label(BuildContext context, String text) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }
}

class ReusabelCustomTextFeild extends StatelessWidget {
  const ReusabelCustomTextFeild({required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
          hintText: hintText,
          contentPadding: EdgeInsets.all(8.0)),
    );
  }
}
