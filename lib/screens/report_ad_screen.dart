// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, avoid_types_as_parameter_names, sized_box_for_whitespace, unused_import, avoid_unnecessary_containers

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/custom_text_field.dart';
import 'package:oudua/components/foot_navigation_bar.dart';
import 'package:oudua/config.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class ReportAdScreen extends StatelessWidget {
  const ReportAdScreen({Key? key}) : super(key: key);

  static String routeID = 'edit_profile_screen';

  @override
  Widget build(BuildContext context) {
    return ReportAdScreenView();
  }
}

class ReportAdScreenView extends StatefulWidget {
  const ReportAdScreenView({Key? key}) : super(key: key);

  @override
  _ReportAdScreenViewState createState() => _ReportAdScreenViewState();
}

class _ReportAdScreenViewState extends State<ReportAdScreenView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Ad'),
        elevation: 0.5,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 80.0,
              decoration: BoxDecoration(
                color: kThemeColor,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Iphone fresh Phones',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            kVSpacing20,
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Is there something',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'wrong with this ad?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                kVSpacing20,
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Please send us a report if you believe there is a',
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'problem with this ad.',
                  ),
                ),
                kVSpacing20,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        onChanged: (value) {},
                        hintText: "Reason",
                      ),
                      kformSpacing,
                      Text(
                        "Your Email",
                      ),
                      CustomTextField(
                        onChanged: (value) {},
                        hintText: "RaihanMahmod007@gmail.com",
                      ),
                      kformSpacing,
                      CustomTextField(
                        onChanged: (value) {},
                        hintText: "Your Message",
                      ),
                      //       OutlinedButton.icon(
                      //                 icon: Icon(Icons.add),
                      //                 onPressed: (){},
                      //                 label: Text('OutlinedButton'),
                      //               style: ButtonStyle(
                      //       shape: MaterialStateProperty.all(RoundedRectangleBorder(side:BorderSide(color: Colors.red,),borderRadius: BorderRadius.circular(30.0))),
                      //     ),
                      // ),
                      SizedBox(
                        height: 160.0,
                      ),
                      CustomButton2(
                        buttonLabel: 'SEND REPORT',
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
