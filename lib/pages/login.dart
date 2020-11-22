import 'package:faiba/services/auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AuthService _auth = AuthService();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Please Login to get started',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextFormField(
                  validator: (value) => value.isEmpty ? "Enter an Email" : null,
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  decoration: InputDecoration(hintText: 'Email'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextFormField(
                  validator: (value) => value.length < 6
                      ? 'Enter a password with 6 characters'
                      : null,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                width: 400.0,
                child: FlatButton(
                    color: Colors.green,
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        dynamic result = await _auth.signIn(email, password);
                        if (result == null) {
                          setState(() {
                            error = 'Please supply a valid credential';
                          });
                        }
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.green),
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 12.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
