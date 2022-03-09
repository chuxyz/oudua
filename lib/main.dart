// ignore_for_file: prefer_const_constructors

import 'package:oudua/config.dart';
import 'package:oudua/screens/agreement_screen.dart';
import 'package:oudua/screens/category_screen.dart';
import 'package:oudua/screens/change_password_screen.dart';
import 'package:oudua/screens/contact_screen.dart';
import 'package:oudua/screens/create_ad_screen.dart';
import 'package:oudua/screens/edit_ad_screen.dart';
import 'package:oudua/screens/edit_profile_screen.dart';
import 'package:oudua/screens/login_screen.dart';
import 'package:oudua/screens/notification_screen.dart';
import 'package:oudua/screens/profile_screen.dart';
import 'package:oudua/screens/register_screen.dart';
import 'package:oudua/screens/report_ad_screen.dart';
import 'package:oudua/screens/welcome_screen.dart';
import 'package:oudua/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'oudua', // App name
      theme: lightTheme,
      initialRoute: LoginScreen.routeID,
      // Define routes
      routes: {
        LoginScreen.routeID: (context) => LoginScreen(),
        ContactScreen.routeID: (context) => ContactScreen(),
        RegisterScreen.routeID: (context) => RegisterScreen(),
        CategoryScreen.routeID: (context) => CategoryScreen(),
        WelcomeScreen.routeID: (context) => WelcomeScreen(),
        CreateAdScreen.routeID: (context) => CreateAdScreen(),
        ProfileScreen.routeID: (context) => ProfileScreen(),
        NotificationScreen.routeID: (context) => NotificationScreen(),
        ChangePasswordScreen.routeID: (context) => ChangePasswordScreen(),
        AgreementScreen.routeID: (context) => AgreementScreen(),
        EditProfileScreen.routeID: (context) => EditProfileScreen(),
        WishListScreen.routeID: (context) => WishListScreen(),
        EditAdScreen.routeID: (context) => EditAdScreen(),
        ReportAdScreen.routeID: (context) => ReportAdScreen(),
        // ChatScreen.routeID: (context) => ChatScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
