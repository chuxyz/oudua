// ignore_for_file: prefer_const_constructors

import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static String routeID = 'notification_screen';

  @override
  Widget build(BuildContext context) {
    return NotificationScreenView();
  }
}

class NotificationScreenView extends StatefulWidget {
  const NotificationScreenView({Key? key}) : super(key: key);

  @override
  _NotificationScreenViewState createState() => _NotificationScreenViewState();
}

class _NotificationScreenViewState extends State<NotificationScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
          elevation: 0.7,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Image.asset('images/barakh-logo.png'),
                        radius: 30,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'FirstName LastName ',
                                  style: Theme.of(context).textTheme.headline6,
                                  children: const [
                                    TextSpan(
                                        text:
                                            'commented on your app. Tap to see the information',
                                        style: TextStyle(fontSize: 15.0)),
                                  ],
                                ),
                              ),
                              kVSpacing10,
                              Text('5 mins ago'),
                              kVSpacing20,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
