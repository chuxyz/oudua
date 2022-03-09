// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ReusableTextFeild extends StatelessWidget {
   // ignore: use_key_in_widget_constructors
   const ReusableTextFeild({required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              prefixIcon: Icon(
                Icons.lock,
                size: 26.0,
                color: Colors.black54,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
              filled: true,
              fillColor: Colors.blueGrey.withOpacity(0.10),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          );
  }
}