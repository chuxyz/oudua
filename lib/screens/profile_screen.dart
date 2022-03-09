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
import 'package:page_transition/page_transition.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeID = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    return ProfileScreenView();
  }
}

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  _ProfileScreenViewState createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
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
        title: Text('Profile'),
        elevation: 0.9,
      ),
      body: SingleChildScrollView(
        controller: _hideBottomNavController,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                kVSpacing20,
                CircleAvatar(
                  child: Image.asset('images/barakh-logo.png'),
                  radius: 45.0,
                ),
                kVSpacing10,
                Text(
                  'FirstName LastName',
                  style: Theme.of(context).textTheme.headline5,
                ),
                kVSpacing20,
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: blueGreyOpacityPt1,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _tripEditModalBottomSheet(context);
                    },
                    child: Icon(
                      Icons.settings_outlined,
                      color: kSettingsIconColor,
                      size: 35.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _tripEditModalBottomSheet(context);
                  },
                  child: Text('Settings'),
                ),
                kVSpacing20,
                Text('Follow Us On Twitter'),
                SizedBox(height: 50.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Ads',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                kVSpacing20,
                GridView.count(
                  //controller: _hideBottomNavController,
                  primary: false,
                  physics: ScrollPhysics(),
                  mainAxisSpacing: 7.0,
                  crossAxisSpacing: 7.0,
                  crossAxisCount: 2,
                  childAspectRatio: (2 / 2.5),
                  shrinkWrap: true,
                  children: [
                    // Use a method here that returns List of data
                    UserAdBox(),
                    UserAdBox(),
                    UserAdBox(),
                    UserAdBox(),
                    UserAdBox(),
                    UserAdBox(),
                    UserAdBox(),
                    UserAdBox(),
                  ],
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

void _tripEditModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
      builder: (BuildContext) {
        return Container(
          height: MediaQuery.of(context).size.height * .40,
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 3),
                child: Text(
                  'Account Manager',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              UserAdBox1(),
              kVSpacing10,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Expanded(
                        child: CustomButton1(
                          icon: Icons.person_outlined,
                          color: Colors.blueAccent,
                          buttonColor: Color(0xFFEEEEEE),
                          onPressed: () {
                            // Navigator.push(
                            // context,
                            // MaterialPageRoute(builder: (context) => EditProfileScreen()),
                            Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  child: EditProfileScreen()),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Expanded(
                        child: CustomButton1(
                          icon: Icons.lock,
                          color: kSettingsIconColor,
                          buttonColor: Colors.grey[200],
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChangePasswordScreen()),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Expanded(
                        child: CustomButton1(
                          icon: Icons.language,
                          color: Colors.lightBlueAccent,
                          buttonColor: Colors.grey[200],
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Expanded(
                        child: CustomButton1(
                          icon: Icons.logout,
                          color: kSettingsIconColor,
                          buttonColor: Colors.grey[200],
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 3),
                child: Row(
                  children: [
                    Text('Edit Profile'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Password'),
                    SizedBox(
                      width: 27.0,
                      height: 2.0,
                    ),
                    Text('Language'),
                    SizedBox(
                      width: 35.0,
                    ),
                    Text('Logout'),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
