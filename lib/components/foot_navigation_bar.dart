// ignore_for_file: prefer_const_constructors

import 'package:oudua/constants.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class FootNavigationBar extends StatelessWidget {
  const FootNavigationBar({
    Key? key,
    required bool navIsVisible,
  })  : _navIsVisible = navIsVisible,
        super(key: key);

  final bool _navIsVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: _navIsVisible ? 57.0 : 0.0,
      child: Wrap(
        children: [
          ConvexAppBar(
            backgroundColor: Colors.white,
            height: 57.0,
            top: -5.0,
            color: Colors.black54,
            activeColor: kThemeColor,
            curveSize: 70.0,
            cornerRadius: 12.0,
            style: TabStyle.fixedCircle,
            onTap: (index) {},
            items: <TabItem>[
              TabItem(
                icon: Icon(Icons.home_outlined),
                title: 'Home',
              ),
              TabItem(
                icon: Icon(Icons.favorite_outline_outlined),
                title: 'Favorite',
              ),
              TabItem(
                icon: SizedBox(
                  height: 30,
                  width: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: kThemeColor),
                    ),
                    child: Icon(
                      Icons.add,
                      color: kThemeColor,
                    ),
                  ),
                ),
              ),
              TabItem(
                icon: Icon(Icons.message_outlined),
                title: 'Messages',
              ),
              TabItem(
                icon: Icon(Icons.person_outlined),
                title: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
