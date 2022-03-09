// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/custom_drop_down_button.dart';
import 'package:oudua/components/custom_text_field.dart';

import 'package:oudua/config.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class EditAdScreen extends StatelessWidget {
  const EditAdScreen({Key? key}) : super(key: key);

  static String routeID = 'edit_ad_screen';

  @override
  Widget build(BuildContext context) {
    return EditAdScreenView();
  }
}

class EditAdScreenView extends StatefulWidget {
  const EditAdScreenView({Key? key}) : super(key: key);

  @override
  _EditAdScreenViewState createState() => _EditAdScreenViewState();
}

class _EditAdScreenViewState extends State<EditAdScreenView> {
  //final String _catInitValue = 'none';
  //final String _subCatInitValue = 'none';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Ad'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            children: [
              CustomTextField.label(context, 'Location'),
              Row(
                children: [
                  Text('Riyadh'),
                  SizedBox(
                    width: 280.0,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey.withOpacity(0.2),
                      child: Icon(
                        Icons.edit,
                        size: 15.0,
                        color: Colors.black,
                      ),
                      radius: 12.0,
                    ),
                  )
                ],
              ),
              kVSpacing10,
              CustomTextField.label(context, 'Category'),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text('Riyadh'),
                  SizedBox(
                    width: 280.0,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey.withOpacity(0.2),
                      child: Icon(
                        Icons.edit,
                        size: 15.0,
                        color: Colors.black,
                      ),
                      radius: 12.0,
                    ),
                  )
                ],
              ),
              kformSpacing,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Divider(
                  thickness: 5.0,
                  indent: 0,
                  endIndent: 0,
                  color: blueGreyOpacityPt1,
                ),
              ),
              kVSpacing10,
              CustomTextField.label(context, 'Add Photos (up to 5)'),
              kVSpacing10,
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Icon(
                          Icons.add_photo_alternate_outlined,
                          size: 50,
                          color: Colors.blueGrey.withOpacity(0.5),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.2),
                              spreadRadius: 1.0,
                              blurRadius: 2.0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Icon(
                          Icons.add_photo_alternate_outlined,
                          size: 50,
                          color: Colors.blueGrey.withOpacity(0.5),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.2),
                              spreadRadius: 1.0,
                              blurRadius: 2.0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 100,
                            height: 100,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              kVSpacing10,
              CustomTextField.label(context, 'Item Details'),
              CustomTextField(
                borderOutlined: true,
                hintText: 'Title',
                onChanged: (value) {},
              ),
              kformSpacing,
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      borderOutlined: true,
                      hintText: 'Price',
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Negotiable',
                      style: Theme.of(context).textTheme.subtitle1),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: kThemeColor,
                    fillColor: MaterialStateProperty.all(Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      side: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(color: kBlack6),
                    ), // Make Reference to MaterialStateBorderSide class to change color when selected
                  ),
                ],
              ),
              kformSpacing,
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      borderOutlined: true,
                      hintText: 'Phone Number',
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 10.0),
                  SizedBox(
                    width: 120,
                    child: CustomDropDownButton(
                      items: const ['New', 'Used'],
                      hintText: 'Condition',
                      onChanged: (value) {},
                      initValue: '',
                      textStyle: TextStyle(fontSize: 16),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kformSpacing,
              CustomTextField(
                borderOutlined: true,
                hintText: 'Phone Number',
                onChanged: (value) {},
              ),
              kformSpacing,
              CustomTextField(
                borderOutlined: true,
                hintText: 'Full Address',
                maxLine: 3,
                onChanged: (value) {},
              ),
              kformSpacing,
              CustomTextField(
                borderOutlined: true,
                hintText: 'Description',
                maxLine: 6,
                onChanged: (value) {},
              ),
              kformSpacing,
              CustomButton2(
                buttonLabel: 'UPDATE AD',
                onPressed: () {},
              ),
              kVSpacing10,
            ],
          ),
        ),
      ),
    );
  }
}
