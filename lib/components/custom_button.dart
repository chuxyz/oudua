// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:oudua/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.buttonColor,
    required this.buttonLabel,
    required this.onPressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  final Color? buttonColor;
  final void Function()?
      onPressed; // Can also use -> final VoidCallback onPressed;
  final String buttonLabel;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 1.0,
        onPrimary: Colors.white,
        primary: buttonColor ?? kThemeColor,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonLabel,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          (icon == null) ? Container() : SizedBox(width: 20.0),
          (icon == null)
              ? Container()
              : Icon(
                  icon,
                  color: Colors.white,
                )
        ],
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    this.buttonColor,
    required this.onPressed,
    this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color? buttonColor;
  final void Function()?
      onPressed; // Can also use -> final VoidCallback onPressed;
  final IconData? icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // elevation: 1.0,
          onPrimary: Colors.white,
          primary: buttonColor ?? kThemeColor,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0), // <-- Radius
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    this.buttonColor,
    required this.buttonLabel,
    required this.onPressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  final Color? buttonColor;
  final void Function()?
      onPressed; // Can also use -> final VoidCallback onPressed;
  final String buttonLabel;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 1.0,
        onPrimary: Colors.white,
        primary: buttonColor ?? kThemeColor,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // <-- Radius
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonLabel,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          (icon == null) ? Container() : SizedBox(width: 20.0),
          (icon == null)
              ? Container()
              : Icon(
                  icon,
                  color: Colors.white,
                )
        ],
      ),
    );
  }
}
