// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    required this.items,
    required this.hintText,
    required this.onChanged,
    required this.initValue,
    this.fillColor,
    this.textStyle,
    this.border,
    this.contentPadding,
    Key? key,
  }) : super(key: key);

  final List<String> items;
  final String hintText;
  final String? initValue;
  final Color? fillColor;
  final TextStyle? textStyle;
  final void Function(String?) onChanged;
  final OutlineInputBorder? border;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      icon: Icon(Icons.keyboard_arrow_down),
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? Colors.white,
        contentPadding:
            contentPadding ?? EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
        border: border ??
            OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
      ),
      hint: Center(
        child: Text(
          hintText,
          style: textStyle ?? Theme.of(context).textTheme.button,
        ),
      ),
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          child:
              (initValue == 'none') ? Text(value) : Center(child: Text(value)),
          value: value,
        );
      }).toList(),
    );
  }
}
