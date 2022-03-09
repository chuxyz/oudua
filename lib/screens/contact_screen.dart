// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:oudua/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  static String routeID = 'contact_screen';

  @override
  Widget build(BuildContext context) {
    return ContactScreenView();
  }
}

class ContactScreenView extends StatefulWidget {
  const ContactScreenView({Key? key}) : super(key: key);

  @override
  _ContactScreenViewState createState() => _ContactScreenViewState();
}

class _ContactScreenViewState extends State<ContactScreenView> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.752297, 90.375734),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      detailsCaption(icon: Icons.location_on, text: 'Address'),
                      detailsInfo('House 12, Road 13'),
                      detailsInfo('Dhanmondi, Dhaka-1209'),
                      kformSpacing,
                      detailsCaption(icon: Icons.email, text: 'Email'),
                      detailsInfo('support@jrdahsooq.com.bd'),
                      kformSpacing,
                      detailsCaption(
                          icon: Icons.phone_enabled, text: 'Customer Care'),
                      detailsInfo('01611428579'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              padding: EdgeInsets.all(10.0),
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  contactRail(
                    color: kCallBtnColor,
                    icon: Icons.phone,
                    text: 'Call',
                  ),
                  contactRail(
                    color: kSupportBtnColor,
                    icon: Icons.contact_support_outlined,
                    text: 'Support',
                  ),
                  contactRail(
                    color: kMapsBtnColor,
                    icon: Icons.place,
                    text: 'Maps',
                  ),
                  contactRail(
                    color: kTwitterBtnColor,
                    icon: Icons.flutter_dash_outlined,
                    text: 'Twitter',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column contactRail(
      {required Color color, required IconData icon, required String text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            primary: Colors.white,
            shape: CircleBorder(),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              icon,
              size: 36.0,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          text,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Padding detailsInfo(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
      ),
    );
  }

  Row detailsCaption({
    required IconData icon,
    required String text,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black54,
        ),
        SizedBox(width: 5.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
