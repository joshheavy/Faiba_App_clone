import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset('assets/images/logo_faiba_fixed_png.png'),
              radius: 100,
            ),
            Text(
              'Create an account to get started',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'First name'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Last name'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password'
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              width: 400.0,
              child: FlatButton(
                  color: Colors.green,
                  onPressed: (){}, 
                  child: Text('Register', style: TextStyle(
                    color: Colors.white
                  ),)
                ),
            ),
          ],
        ),
      ),
    );
  }
}