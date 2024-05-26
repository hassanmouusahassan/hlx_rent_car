import 'package:flutter/material.dart';
import 'package:hlx/pages/cars_page.dart';
import 'package:hlx/pages/saved_pages.dart';
import 'package:hlx/pages/settings_page.dart';
import 'package:hlx/pages/start_home.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = true;
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
        backgroundColor: Colors.black,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        // activeColor: const Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.home_filled,
            title: 'Home',
            activeColor: Colors.blue,
            inactiveColor: Colors.orange,
          ),
          BarItem(
            icon: Icons.car_rental,
            title: 'Cars',
            activeColor: Colors.yellow,
            inactiveColor: Colors.green,
          ),
          BarItem(
            icon: Icons.star_rounded,
            title: 'Saved',
            activeColor: Colors.blue,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.settings,
            title: 'Settings',
            activeColor: Colors.cyan,
            inactiveColor: Colors.purple,
          ),
        ],
      )
          : SlidingClippedNavBar(
        backgroundColor: Colors.black,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        activeColor: const Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.home_filled,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.car_rental,
            title: 'Cars',
          ),
          BarItem(
            icon: Icons.star_rounded,
            title: 'Saved',
          ),
          BarItem(
            icon: Icons.tune_rounded,
            title: 'Settings',
          ),
        ],
      ),
    );
  }
}

// icon size:24 for fontAwesomeIcons
// icons size: 30 for MaterialIcons

List<Widget> _listOfWidget = <Widget>[
  start_home(),
  RentCarPage(),
  SavedCarsPage(),
  SettingsPage(isDarkTheme: true,onThemeToggle: (value) => true,),
];