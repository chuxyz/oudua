// ignore_for_file: prefer_const_constructors

import 'package:oudua/constants.dart';
import 'package:oudua/data.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  static String routeID = 'category_screen';

  @override
  Widget build(BuildContext context) {
    return CategoryScreenView();
  }
}

class CategoryScreenView extends StatefulWidget {
  const CategoryScreenView({Key? key}) : super(key: key);

  @override
  _CategoryScreenViewState createState() => _CategoryScreenViewState();
}

class _CategoryScreenViewState extends State<CategoryScreenView> {
  int selectedIndex = 0;

  final PageController _pageController = PageController();
  final int pageCount = categoriesCaption.length;
  final double tabHeight = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: 100.0,
              child: ListView.separated(
                itemCount: pageCount,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 0.0,
                    thickness: 1.0,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        _pageController.jumpToPage(index);
                      });
                    },
                    child: Row(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          color: kThemeColor,
                          height: (selectedIndex == index) ? tabHeight : 0.0,
                          width: 5.0,
                        ),
                        Expanded(
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1.0,
                                  color: (selectedIndex == index)
                                      ? Colors.transparent
                                      : Colors.grey.withOpacity(0.3),
                                ),
                              ),
                            ),
                            duration: Duration(milliseconds: 500),
                            alignment: Alignment.center,
                            height: tabHeight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20.0),
                                  Expanded(
                                    child: Image.asset(
                                      '',
                                      height: 60.0,
                                      width: 60.0,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    categoriesData['caption']![index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                controller: _pageController,
                itemCount: pageCount,
                itemBuilder: (BuildContext context, int pageIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: cars.length,
                      itemBuilder: (BuildContext context, int pageListIndex) {
                        // return ListTile(title: Text('$pageIndex'));
                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 6.0),
                          title: Text(cars[pageListIndex]),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          shape: Border(
                            bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                // children: [
                //   for (var i = 0; i < pageCount; i++)
                //     Container(
                //       color: Colors.blueGrey,
                //       child: Center(child: Text('Page $i')),
                //     ),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
