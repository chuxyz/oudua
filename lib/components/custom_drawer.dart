// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 30.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Image.asset('images/barakh-logo.png'),
                        radius: 35.0,
                      ),
                      SizedBox(width: 10.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'FirsName LastName',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '0123456789',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                drawerMenuItem(
                  text: 'Home',
                  icon: Icons.home_outlined,
                ),
                drawerMenuItem(
                  text: 'Profile',
                  icon: Icons.person_outline,
                ),
                drawerMenuItem(
                  text: 'Favourite',
                  icon: Icons.favorite_outline,
                ),
                drawerMenuItem(
                  text: 'Contact Us',
                  icon: Icons.phone_outlined,
                ),
                drawerMenuItem(
                  text: 'Policy of Use',
                  icon: Icons.policy_outlined,
                ),
                SizedBox(height: 70.0),
                Text('Follow Us on Twitter')
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile drawerMenuItem({required String text, required IconData icon}) {
    return ListTile(
      leading: SizedBox(
        width: 50.0,
        child: Icon(
          icon,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.color, required this.cardChild});
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}

class ReusableCard1 extends StatelessWidget {
  const ReusableCard1({required this.color, required this.cardChild});
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: color,
      ),
    );
  }
}
