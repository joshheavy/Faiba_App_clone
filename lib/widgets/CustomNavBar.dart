import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {

  final IconData icon1;
  final String text1;
  final IconData icon2;
  final String text2;

  const CustomNavigationBar({
    @required this.icon1,
    @required this.text1, 
    @required this.icon2, 
    @required this.text2
  });

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;

  void onTappedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
           widget.icon1, 
            color: Colors.white,
          ), 
          label: widget.text1,
        ),
        BottomNavigationBarItem(
            icon: Icon(
              widget.icon2,
              color: Colors.white
            ),
            label: widget.text2,
        )
      ],
      currentIndex: selectedIndex,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.green,
      onTap: onTappedItem,
    );
  }
}
