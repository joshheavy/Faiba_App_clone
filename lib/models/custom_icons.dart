import 'package:flutter/material.dart';

class CustomIcon {
  final IconData icon;
  final String text;

  const CustomIcon({@required this.icon, @required this.text});
}

List<CustomIcon> iconList = [
  CustomIcon(icon: Icons.phone_in_talk, text: 'Buy Airtime'),
  CustomIcon(icon: Icons.wifi, text: 'Buy Bundles'),
  CustomIcon(icon: Icons.data_usage, text: 'Check Balance')
];
