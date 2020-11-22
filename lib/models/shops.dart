import 'package:flutter/material.dart';

class Shop {
  final IconData icon;
  final String title;
  final String subtitle;

  const Shop({this.icon, @required this.title, @required this.subtitle});

  static List<Shop> shopList = [
    Shop(icon: Icons.phone, title: 'Jamii Telecom', subtitle: 'Jamii Towers'),
    Shop(icon: Icons.phone, title: 'Jamii Telecom', subtitle: 'TRM'),
    Shop(icon: Icons.phone, title: 'Jamii Telecom', subtitle: 'Nyali Centre'),
    Shop(
        icon: Icons.phone,
        title: 'Jamii Telecom',
        subtitle: 'Ketty Plaza, Mombasa'),
    Shop(
        icon: Icons.phone,
        title: 'Jamii Telecom',
        subtitle: 'Hurligham, UON pension'),
    Shop(icon: Icons.phone, title: 'Maguma', subtitle: 'Thika'),
    Shop(icon: Icons.phone, title: 'Compnet', subtitle: 'Nairobi, CBD'),
    Shop(icon: Icons.phone, title: 'Fonexpress', subtitle: 'County Wide'),
    Shop(icon: Icons.phone, title: 'Fonesrus', subtitle: 'Nairobi, CBD'),
    Shop(icon: Icons.phone, title: 'Campfire', subtitle: 'Githurai 45'),
    Shop(
        icon: Icons.phone,
        title: 'Fortress international',
        subtitle: 'Galleria/Valley Arcade'),
    Shop(title: 'Phonelink Samsung Shop Trm', subtitle: 'Jamii Towers'),
    Shop(title: 'Phonelink Samsung Westgate', subtitle: 'At Westgate'),
    Shop(title: 'Tuscom Athi River', subtitle: 'Inside Tuskys Athi River'),
    Shop(title: 'Tuscom karen', subtitle: 'Inside Tuskys Karen'),
    Shop(title: 'Tuscom Buruburu', subtitle: 'Inside Tuskys Buruburu'),
    Shop(title: 'Tuscom Embakasi', subtitle: 'Inside Tuskys Embakasi'),
    Shop(title: 'Tuscom Greenspan', subtitle: 'Inside Tuskys Greenspan'),
    Shop(title: 'Tuscom Otc', subtitle: 'Inside Tuskys Otc'),
    Shop(title: 'Tuscom Rongai', subtitle: 'Inside Tuskys Rongai'),
    Shop(title: 'Tuscom Ruai', subtitle: 'Inside Tuskys Ruai'),
    Shop(title: 'Tuscom Pioneer', subtitle: 'Inside Tuskys Pioneer'),
    Shop(title: 'Tuscom T-Mall', subtitle: 'Inside Tuskys T-Mall'),
    Shop(title: 'Tuscom Bandari', subtitle: 'Inside Tuskys Bandari'),
    Shop(title: 'Tuscom Echiro', subtitle: 'Inside Tuskys Echiro'),
    Shop(title: 'Tuscom Eldoret', subtitle: 'Inside Tuskys Eldoret-Eldoret'),
    Shop(
        title: 'Tuscom Green Square',
        subtitle: 'Inside Tuskys Green Square kericho'),
  ];
}
