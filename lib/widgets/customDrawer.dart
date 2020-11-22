import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30.0,
            child: Icon(Icons.person_outline_rounded),
          ),
          title: Text(
            'Joshua',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Manage profile',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
        _Tiles(
          icon: Icons.home,
          text: 'Home',
          onTap: () => Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.settings,
          text: 'Settings',
          onTap: () => Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.error_outline,
          text: 'Support',
          onTap: () => Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.shopping_cart,
          text: 'Faiba Shop',
          onTap: () => Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.book,
          text: 'FAQ',
          onTap: () => Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.error,
          text: 'About',
          onTap: () => Navigator.pop(context),
        ),
        Expanded(child: Container()),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
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
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}
