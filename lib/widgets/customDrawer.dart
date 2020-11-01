import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.grey[200]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: Icon(Icons.person),
              ),
              SizedBox(width: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Joshua',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Manage profile',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              )
            ],
          ),
        ),
        _Tiles(
          icon: Icons.home, 
          text: 'Home', 
          onTap: ()=> Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.settings, 
          text: 'Settings',
          onTap: ()=> Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.error_outline, 
          text: 'Support',
          onTap: ()=> Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.shopping_cart, 
          text: 'Faiba Shop',
          onTap: ()=> Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.book, 
          text: 'FAQ',
          onTap: ()=> Navigator.pop(context),
        ),
        _Tiles(
          icon: Icons.error, 
          text: 'About',
          onTap: ()=> Navigator.pop(context),
        )
      ],
    ));
  }
}

class _Tiles extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const _Tiles({ Key key, @required this.icon, @required this.text, @required this.onTap})
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
