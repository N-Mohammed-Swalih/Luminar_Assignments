import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'farmer_fresh_home_page.dart';

void main() {
  runApp(const BottomNavBar());
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _colorful
          ? SlidingClippedNavBar.colorful(
              backgroundColor: Colors.yellow,
              onButtonPressed: onButtonPressed,
              iconSize: 27,
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.event,
                  title: 'Home',
                ),
                BarItem(
                  icon: Icons.shopping_cart,
                  title: 'Cart',
                ),
                BarItem(
                  icon: Icons.account_box,
                  title: 'Account',
                ),
              ],
            )
          : SizedBox(
              height: 65,
              child: SlidingClippedNavBar(
                iconSize: 27,
                fontSize: 15,
                backgroundColor: Colors.white,
                onButtonPressed: onButtonPressed,
                activeColor: Colors.green,
                inactiveColor: Colors.black,
                selectedIndex: selectedIndex,
                barItems: <BarItem>[
                  BarItem(
                    icon: Icons.home,
                    title: 'Home',
                  ),
                  BarItem(
                    icon: Icons.shopping_cart,
                    title: 'Cart',
                  ),
                  BarItem(
                    icon: Icons.person_sharp,
                    title: 'Account',
                  ),
                ],
              ),
            ),
    );
  }
}

List<Widget> _listOfWidget = <Widget>[
  HomePage(),
  Placeholder(),
  Placeholder(),
];
