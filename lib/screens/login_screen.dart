// ignore_for_file: prefer_const_constructors

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/custom_text_field.dart';
import 'package:oudua/components/social_button.dart';
import 'package:oudua/components/text_divider.dart';
import 'package:oudua/constants.dart';
import 'package:oudua/screens/register_screen.dart';
import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String routeID = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return LoginScreenView();
  }
}

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  _LoginScreenViewState createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  @override
  Widget build(BuildContext context) {
    double btnHeight = MediaQuery.of(context).size.height * 0.08;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Expanded(
                  child: Image.asset(
                    'images/barakh-logo.png',
                    width: 300.0,
                    height: 300.0,
                  ),
                ),
              ),
              Text(
                "Email",
                style: kFormLabelStyle,
              ),
              CustomTextField(
                onChanged: (value) {},
                prefixIcon: Icon(Icons.person_outline),
                hintText: "Your Email Here",
              ),
              kformSpacing,
              Text(
                "Password",
                style: kFormLabelStyle,
              ),
              CustomTextField(
                onChanged: (value) {},
                prefixIcon: Icon(Icons.lock),
                hintText: "Your Password",
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16.0, color: Colors.black54),
                  ),
                ),
              ),
              Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: SizedBox(
                          height: btnHeight,
                          child: CustomButton(
                            buttonLabel: "Log In",
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              kformSpacing,
              TextDivider(text: "OR"),
              kformSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: SocialButton(
                      buttonLabel: 'Apple',
                      iconURL: 'icons/apple-icon.png',
                    ),
                  ),
                  Expanded(
                    child: SocialButton(
                      buttonLabel: 'Google',
                      iconURL: 'icons/google-icon.png',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
