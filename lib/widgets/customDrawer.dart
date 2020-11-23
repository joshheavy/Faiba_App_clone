import 'package:flutter/material.dart';
import 'package:faiba/services/auth.dart';
import 'package:faiba/helpers/screen_navigation.dart';
import 'package:faiba/pages/authentication.dart';
import 'package:faiba/pages/home.dart';
import 'package:faiba/pages/drawerpages/about.dart';
import 'package:faiba/pages/drawerpages/faq.dart';
import 'package:faiba/pages/drawerpages/settings.dart';
import 'package:faiba/pages/drawerpages/shop.dart';
import 'package:faiba/pages/drawerpages/support.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        ListTile(
          leading: CircleAvatar(
            // foregroundColor: Colors.green,
            backgroundColor: Colors.white,
            radius: 30.0,
            child: Icon(
              Icons.person_outline_rounded,
              size: 60.0,
            ),
          ),
          title: Text(
            'Joshua',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          subtitle: Text(
            'Manage profile',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        _Tiles(
          icon: Icons.home,
          text: 'Home',
          onTap: () => ChangeScreen(context, Home()),
        ),
        _Tiles(
          icon: Icons.settings,
          text: 'Settings',
          onTap: () => ChangeScreen(context, SettingsPage()),
        ),
        _Tiles(
          icon: Icons.error_outline,
          text: 'Support',
          onTap: () => ChangeScreen(context, SupportPage()),
        ),
        _Tiles(
          icon: Icons.shopping_cart,
          text: 'Faiba Shop',
          onTap: () => ChangeScreen(context, ShopPage()),
        ),
        _Tiles(
          icon: Icons.book,
          text: 'FAQ',
          onTap: () => ChangeScreen(context, FAQPage()),
        ),
        _Tiles(
          icon: Icons.error,
          text: 'About',
          onTap: () => ChangeScreen(context, AboutPage()),
        ),
        Expanded(child: Container()),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: Colors.green[300],
          ),
          title: Text("Logout"),
          onTap: () async {
            await AuthService().signOut().then((value) => ChangeScreen(context, Authentication()));
          },
        ),
        SizedBox(
          height: 30.0,
        )
      ],
    ));
  }
}

class _Tiles extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const _Tiles(
      {Key key, @required this.icon, @required this.text, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey, size: 20.0,),
      title: Text(
        text, 
        style: TextStyle(color: Colors.black54, fontSize: 20,),
      ),
      onTap: onTap,
    );
  }
}
