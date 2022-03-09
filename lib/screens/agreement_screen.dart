// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class AgreementScreen extends StatelessWidget {
  const AgreementScreen({Key? key}) : super(key: key);

  static String routeID = 'agreement_screen';

  final agreementText =
      '''I also guarantee that I will pay the commission jhsjksjkasjkasjkasjk 
  jhjkasjkjkas within 10 days of jkasjkasjk receiving the funds.''';

  @override
  Widget build(BuildContext context) {
    return AgreementScreenView();
  }
}

class AgreementScreenView extends StatefulWidget {
  const AgreementScreenView({Key? key}) : super(key: key);

  @override
  _AgreementScreenViewState createState() => _AgreementScreenViewState();
}

class _AgreementScreenViewState extends State<AgreementScreenView> {
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  // This function is triggered when the button is clicked
  void _doSomething() {
    // Do something
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commission Agreement'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              kVSpacing20,
              CircleAvatar(
                child: Image.asset('images/barakh-logo.png'),
                radius: 30.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                      Text(
                        'I guarantee that I, as the post publisher, as the \npost publisher',
                      )
                    ],
                  ),
                ],
              ),
              Text(
                'I also guarantee that I will pay the commission within 10 days of receiving the funds.',
              ),
              SizedBox(
                height: 350.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomButton2(
                    buttonLabel: 'Continue',
                    onPressed: agree ? _doSomething : null,
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
