// ignore_for_file: prefer_const_constructors

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/custom_drop_down_button.dart';
import 'package:oudua/components/custom_text_field.dart';

import 'package:oudua/config.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class CreateAdScreen extends StatelessWidget {
  const CreateAdScreen({Key? key}) : super(key: key);

  static String routeID = 'create_ad_screen';

  @override
  Widget build(BuildContext context) {
    return CreateAdScreenView();
  }
}

class CreateAdScreenView extends StatefulWidget {
  const CreateAdScreenView({Key? key}) : super(key: key);

  @override
  _CreateAdScreenViewState createState() => _CreateAdScreenViewState();
}

class _CreateAdScreenViewState extends State<CreateAdScreenView> {
  String _catInitValue = 'none';
  String _subCatInitValue = 'none';
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
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text('Select Location'),
                  ),
                  style: TextButton.styleFrom(
                    primary: kBlack5,
                    backgroundColor: blueGreyOpacityPt1,
                  ),
                ),
              ),
              kVSpacing10,
              CustomTextField.label(context, 'Category'),
              CustomDropDownButton(
                hintText: 'Select Category',
                items: const ['Come', 'Hello'],
                initValue: _catInitValue,
                fillColor: blueGreyOpacityPt1,
                textStyle: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: kBlack5),
                onChanged: (value) {
                  setState(() {
                    _catInitValue = value!;
                  });
                },
              ),
              SizedBox(height: 10.0),
              CustomDropDownButton(
                hintText: 'Select Subcategory',
                items: const ['Come', 'Hello'],
                initValue: _subCatInitValue,
                fillColor: blueGreyOpacityPt1,
                textStyle: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: kBlack5),
                onChanged: (value) {
                  setState(() {
                    _subCatInitValue = value!;
                  });
                },
              ),
              kformSpacing,
              Divider(
                thickness: 5.0,
                color: blueGreyOpacityPt1,
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
              CustomButton(
                buttonLabel: 'CREATE AD',
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
