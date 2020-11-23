import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
      children: [
        SizedBox(height: 50,),
        ListTile(
          leading: CircleAvatar(
            // foregroundColor: Colors.green,
            backgroundColor: Colors.white,
            radius: 30.0,
            child: Icon(Icons.person_outline_rounded, size: 60.0,),
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
          leading: Icon(Icons.logout, color: Colors.green[300],),
          title: Text("Logout"),
          onTap: (){},
        ),
        SizedBox(height: 30.0,)
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
