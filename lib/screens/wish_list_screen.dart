// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, avoid_types_as_parameter_names, sized_box_for_whitespace, unused_import, avoid_unnecessary_containers

import 'package:oudua/components/custom_button.dart';
import 'package:oudua/components/custom_drawer.dart';
import 'package:oudua/components/foot_navigation_bar.dart';
import 'package:oudua/components/user_ad_box.dart';
import 'package:oudua/config.dart';
import 'package:oudua/constants.dart';
import 'package:oudua/screens/change_password_screen.dart';
import 'package:oudua/screens/edit_profile_screen.dart';
import 'package:oudua/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  static String routeID = 'wish_list_screen';

  @override
  Widget build(BuildContext context) {
    return WishListScreenView();
  }
}

class WishListScreenView extends StatefulWidget {
  const WishListScreenView({Key? key}) : super(key: key);

  @override
  _WishListScreenViewState createState() => _WishListScreenViewState();
}

class _WishListScreenViewState extends State<WishListScreenView> {
  late bool _navIsVisible;
  late ScrollController _hideBottomNavController;

  @override
  void initState() {
    super.initState();
    _navIsVisible = true;
    _hideBottomNavController = ScrollController();
    _hideBottomNavController.addListener(() {
      if (_hideBottomNavController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_navIsVisible) {
          setState(() {
            _navIsVisible = false;
          });
        }
      }
      if (_hideBottomNavController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_navIsVisible) {
          setState(() {
            _navIsVisible = true;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _hideBottomNavController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wish List'),
      ),
      body: SingleChildScrollView(
        controller: _hideBottomNavController,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Card(
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.blueGrey,
                width: 0.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            // color: Colors.blueGrey[50],
            child: Row(
              children: [
                Container(
                  height: 125,
                  width: 110,
                  padding:
                      EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('images/barakh-logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Iphone Fresh Phones',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_outline_rounded,
                              color: kMapsBtnColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.place_outlined,
                            color: kThemeColor,
                          ),
                          Text('3 Simpson Road'),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: const [
                          Icon(
                            Icons.person_outline,
                            color: Colors.black54,
                          ),
                          Text('azad007'),
                          SizedBox(width: 20.0),
                          Icon(
                            Icons.schedule_outlined,
                            color: Colors.black54,
                          ),
                          Text('10 minuits ago'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FootNavigationBar(navIsVisible: _navIsVisible),
    );
  }
}
