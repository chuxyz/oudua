// ignore_for_file: prefer_const_constructors, empty_constructor_bodies, prefer_const_literals_to_create_immutables, unused_import

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/reusable_text_feild.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  static String routeID = 'change_password';

  @override
  Widget build(BuildContext context) {
    return ChangePasswordScreenView();
  }
}

class ChangePasswordScreenView extends StatefulWidget {
  const ChangePasswordScreenView({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenViewState createState() =>
      _ChangePasswordScreenViewState();
}

class _ChangePasswordScreenViewState extends State<ChangePasswordScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Expanded(
                  child: Image.asset(
                    'images/pad1.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              ReusableTextFeild(
                hintText: 'Current Password',
              ),
              kformSpacing,
              ReusableTextFeild(
                hintText: 'New Password',
              ),
              kformSpacing,
              ReusableTextFeild(
                hintText: 'Confirm New Password',
              ),
              SizedBox(height: 28.0),
              CustomButton2(
                buttonLabel: 'CHANGE PASSWORD',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
