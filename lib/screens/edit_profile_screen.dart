// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, avoid_types_as_parameter_names, sized_box_for_whitespace, unused_import, avoid_unnecessary_containers

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/custom_text_field.dart';
import 'package:oudua/components/foot_navigation_bar.dart';
import 'package:oudua/config.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  static String routeID = 'edit_profile_screen';

  @override
  Widget build(BuildContext context) {
    return EditProfileScreenView();
  }
}

class EditProfileScreenView extends StatefulWidget {
  const EditProfileScreenView({Key? key}) : super(key: key);

  @override
  _EditProfileScreenViewState createState() => _EditProfileScreenViewState();
}

class _EditProfileScreenViewState extends State<EditProfileScreenView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                kVSpacing20,
                CircleAvatar(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12.0,
                        child: Icon(
                          Icons.camera_alt,
                          size: 15.0,
                          color: Color(0xFF404040),
                        )),
                  ),
                  backgroundImage: AssetImage('images/barakh-logo.png'),
                  radius: 45.0,
                ),
                kVSpacing10,
                Text(
                  'MD.Raihan Mahmod',
                  style: Theme.of(context).textTheme.headline5,
                ),
                kVSpacing10,
                Divider(
                  thickness: 6.0,
                  indent: 0,
                  endIndent: 0,
                  color: blueGreyOpacityPt1,
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      child: Text('Personal Information'),
                    ),
                    SizedBox(
                      width: 150.0,
                    ),
                    TextButton(
                        onPressed: () {
                          _tripEditModalBottomSheet(context);
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14.0,
                            ),
                          ),
                        )),
                  ],
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReusableText(
                        Ptext: 'Name',
                        fontWeight: FontWeight.bold,
                        Fontsize: 15.0,
                      ),
                      ReusableTextLight(
                        Pltext: 'Raihan Mahmod',
                        Fontsize: 15.0,
                      ),
                      kVSpacing20,
                      ReusableText(
                        Ptext: 'Contact Number',
                        fontWeight: FontWeight.bold,
                        Fontsize: 15.0,
                      ),
                      ReusableTextLight(
                        Pltext: '01611428579',
                        Fontsize: 15.0,
                      ),
                      kVSpacing20,
                      ReusableText(
                        Ptext: 'Gender',
                        fontWeight: FontWeight.bold,
                        Fontsize: 15.0,
                      ),
                      ReusableTextLight(
                        Pltext: 'Not Provided',
                        Fontsize: 15.0,
                      ),
                      kVSpacing20,
                      ReusableText(
                        Ptext: 'Date of Birth',
                        fontWeight: FontWeight.bold,
                        Fontsize: 15.0,
                      ),
                      ReusableTextLight(
                        Pltext: 'Not Provided',
                        Fontsize: 15.0,
                      ),
                      kVSpacing20,
                      ReusableText(
                        Ptext: 'Primary Email',
                        fontWeight: FontWeight.bold,
                        Fontsize: 15.0,
                      ),
                      ReusableTextLight(
                        Pltext: 'raihanmahmod007@gmail.com',
                        Fontsize: 15.0,
                      ),
                      OutlinedButton.icon(
                        icon: Icon(Icons.add),
                        onPressed: () {},
                        label: Text('OutlinedButton'),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(30.0))),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _tripEditModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
        builder: (BuildContext) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.95,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Full Name",
                  style: kFormLabelStyle,
                ),
                kVSpacing10,
                ReusabelCustomTextFeild(hintText: 'Raihan Mahmod'),
                kformSpacing,
                Text(
                  "Phone Number",
                  style: kFormLabelStyle,
                ),
                kVSpacing10,
                ReusabelCustomTextFeild(hintText: '0161428579'),
                kformSpacing,
                Text(
                  "Date of Birth",
                  style: kFormLabelStyle,
                ),
                kVSpacing10,
                ReusabelCustomTextFeild(hintText: 'Enter Your Date of Birth '),
                kformSpacing,
                Text(
                  "Gender",
                  style: kFormLabelStyle,
                ),
                kVSpacing10,
                ReusabelCustomTextFeild(hintText: 'Enter Your Gender'),
                kformSpacing,
                Text(
                  "Primary Email",
                  style: kFormLabelStyle,
                ),
                kVSpacing10,
                ReusabelCustomTextFeild(hintText: 'raihanmahmod007@gmail.com '),
                kformSpacing,
                CustomButton2(
                  buttonLabel: 'SAVE PERSONAL INFORMATION',
                  onPressed: () {},
                ),
              ],
            ),
          );
        });
  }
}

class ReusableTextLight extends StatelessWidget {
  const ReusableTextLight({required this.Pltext, required this.Fontsize});

  final String Pltext;
  final double Fontsize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(Pltext,
          style: TextStyle(
            fontSize: Fontsize,
          )),
    );
  }
}

class ReusableText extends StatelessWidget {
  const ReusableText(
      {required this.Ptext, required this.Fontsize, required this.fontWeight});

  final String Ptext;
  final double Fontsize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(Ptext,
          style: TextStyle(fontSize: Fontsize, fontWeight: fontWeight)),
    );
  }
}
