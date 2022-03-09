import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.buttonLabel,
    required this.iconURL,
  }) : super(key: key);

  final String buttonLabel;
  final String iconURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: kSocialBgColor,
          primary: Colors.grey.shade500,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // <-- Radius
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconURL,
              height: 20.0,
              width: 20.0,
            ),
            const SizedBox(width: 5.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(buttonLabel),
            ),
          ],
        ),
      ),
    );
  }
}
