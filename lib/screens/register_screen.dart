// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/custom_text_field.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static String routeID = 'register_screen';

  @override
  Widget build(BuildContext context) {
    return RegisterScreenView();
  }
}

class RegisterScreenView extends StatefulWidget {
  const RegisterScreenView({Key? key}) : super(key: key);

  @override
  _RegisterScreenViewState createState() => _RegisterScreenViewState();
}

class _RegisterScreenViewState extends State<RegisterScreenView> {
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
                "Phone",
                style: kFormLabelStyle,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButtonFormField<String>(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      hint: Text('+234'),
                      items: ['+233', '+234']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: CustomTextField(
                      onChanged: (value) {},
                      keyboardType: TextInputType.number,
                      hintText: "Phone",
                    ),
                  ),
                ],
              ),
              kformSpacing,
              Text(
                "Password",
                style: kFormLabelStyle,
              ),
              CustomTextField(
                onChanged: (value) {},
                prefixIcon: Icon(Icons.lock),
                obscureText: true,
                hintText: "Your Password",
              ),
              kformSpacing,
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
                            buttonLabel: "Sign Up",
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
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
