import 'package:faiba/pages/customBody.dart';
import 'package:faiba/pages/notifications.dart';
import 'package:faiba/pages/shop_locator.dart';
import 'package:faiba/widgets/customDrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _nextPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Notifications()));
  }

  int selectedIndex = 0;

  void onTappedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = [
    CustomBody(),
    ShopPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              height: 35.0,
              child: Image.asset(
                'assets/images/logo_faiba_fixed_png.png',
                color: Colors.white,
                fit: BoxFit.contain,
              )),
          elevation: 0.0,
          actions: [
            IconButton(
                icon: Icon(Icons.add_alert),
                color: Colors.white,
                onPressed: () {
                  _nextPage();
                })
          ],
        ),
        drawer: CustomDrawer(),
        body: _widgetOptions.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined, color: Colors.white),
                label: 'Shop locator')
          ],
          elevation: 0.0,
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.green,
          onTap: onTappedItem,
        ));
  }
}
