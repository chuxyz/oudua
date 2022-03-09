// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:oudua/config.dart';
import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';

class UserAdBox extends StatelessWidget {
  const UserAdBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: blueGreyOpacityPt1,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 99,
          ),
          kVSpacing10,
          Text(
            'Samsung Mobile',
            style: Theme.of(context).textTheme.headline6,
          ),
          kVSpacing20,
          Text(
            '232 Main Avenue',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          kVSpacing20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$800',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: kThemeColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text('12 Sep.'),
            ],
          ),
        ],
      ),
    );
  }
}

class UserAdBox1 extends StatelessWidget {
  const UserAdBox1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: blueGreyOpacityPt1,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kVSpacing5,
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset('images/barakh-logo.png'),
                    radius: 25.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MD.Raihan Mahmod',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 0.0,
                        ),
                        child: Text(
                          '01611428579',
                        ),
                      )
                    ],
                  ),
                ],
              ))
            ]),
            kVSpacing5,
          ],
        ),
      ),
    );
  }
}
