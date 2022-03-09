// ignore_for_file: prefer_const_constructors

import 'package:oudua/components/foot_navigation_bar.dart';
import 'package:oudua/components/custom_drawer.dart';
import 'package:oudua/config.dart';
import 'package:oudua/constants.dart';
import 'package:oudua/data.dart';
import 'package:oudua/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static String routeID = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return WelcomeScreenView();
  }
}

class WelcomeScreenView extends StatefulWidget {
  const WelcomeScreenView({Key? key}) : super(key: key);

  @override
  _WelcomeScreenViewState createState() => _WelcomeScreenViewState();
}

class _WelcomeScreenViewState extends State<WelcomeScreenView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
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
    SizeConfig().screenSizeInit(context);

    return Scaffold(
      key: _key,
      drawer: CustomDrawer(),
      body: CustomScrollView(
        controller: _hideBottomNavController,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 1.0,
            pinned: true,
            //stretch: true,
            expandedHeight: SizeConfig.blockHeight * 37,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: NotificationScreen()),
                  );
                },
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(SizeConfig.blockHeight * 33),
              child: Column(
                children: [
                  AppBar(
                    elevation: 0.0,
                    bottomOpacity: 0.0,
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.white,
                    title: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 26.0,
                          color: Colors.black54,
                        ),
                        hintText: 'What are you looking for?',
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black54,
                        ),
                        filled: true,
                        fillColor: Colors.blueGrey.withOpacity(0.15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.blueGrey.withOpacity(0.15),
                                width: 2.0,
                              ),
                            ),
                          ),
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                            child: SizedBox(
                              height: SizeConfig.blockHeight * 14,
                              width: double.infinity,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: categoriesCaption.length + 1,
                                itemBuilder: (BuildContext context, int index) {
                                  int start = index - 1;
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10.0),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 60.0,
                                            height: 60.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.2),
                                                  spreadRadius: 3.0,
                                                  blurRadius: 5.0,
                                                  offset: Offset(0, 0),
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Icon(
                                                (start < 0)
                                                    ? Icons.grid_view
                                                    : Icons.ac_unit_outlined,
                                                size: 36.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5.0),
                                        Text(
                                          (start < 0)
                                              ? 'All'
                                              : categoriesData['caption']![
                                                  --index],
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.blueGrey.withOpacity(0.15),
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: SizeConfig.blockHeight * 6.5,
                                width: double.infinity,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cars.length + 1,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    int start = index - 1;
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: (start < 0)
                                              ? kThemeColor
                                              : Colors.blueGrey
                                                  .withOpacity(0.15),
                                          primary: Colors.black87,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          (start < 0) ? 'All' : cars[--index],
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockHeight * 5.5,
                                width: SizeConfig.blockHeight * 16,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 10.0),
                                  child: DropdownButtonFormField<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    onChanged: (value) {},
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 0.0, 0.0, 0.0),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    hint: Text('All Regions'),
                                    items: ['Lagos', 'Ikeja']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        child: Text(value),
                                        value: value,
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SliverToBoxAdapter(
          //   child: Container(),
          // ),
          // SliverToBoxAdapter(
          //   child: Container(),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.blueGrey[50],
                    child: Row(
                      children: [
                        Container(
                          height: 125,
                          width: 110,
                          padding: EdgeInsets.only(
                              left: 0, top: 10, bottom: 70, right: 20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(17.0)),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/carbon-fiber-shelby-mustang-1600685276.jpg",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Caption',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_outline,
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
                              SizedBox(height: 15.0),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person_outline,
                                    color: Colors.black54,
                                  ),
                                  Text('Username'),
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
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
      bottomNavigationBar: FootNavigationBar(navIsVisible: _navIsVisible),
    );
  }
}
