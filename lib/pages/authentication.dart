import 'package:faiba/pages/login.dart';
import 'package:faiba/pages/register.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  int selectedIndex = 0;

  void onTappedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = [
    LoginScreen(),
    RegisterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.login), label: 'login'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt),
                label: 'Register'
            )
          ],
          elevation: 0.0,
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.green,
          onTap: onTappedItem,
        ));
  }
}