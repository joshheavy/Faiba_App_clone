import 'package:faiba/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../services/auth.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FormBuilder(
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
                child: FormBuilderTextField(
                  attribute: 'email',
                  validators: [
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: FormBuilderTextField(
                  attribute: 'password',
                  obscureText: true,
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
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
                      if (_formKey.currentState.saveAndValidate()) {
                        AuthService().signIn(
                          email: _formKey.currentState.value['email'],
                          password: _formKey.currentState.value['password'],
                        ).then((value) => {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => Home()
                          ))
                        });
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
