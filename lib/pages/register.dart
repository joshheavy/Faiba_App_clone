import 'package:faiba/pages/home.dart';
import 'package:faiba/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: FormBuilderTextField(
                  attribute: 'firstname',
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                  decoration: InputDecoration(
                    labelText: 'First name',
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: FormBuilderTextField(
                    attribute: 'lastname',
                    validators: [
                      FormBuilderValidators.required(),
                    ],
                    decoration: InputDecoration(
                      labelText: 'Last name',
                    ),
                    keyboardType: TextInputType.name,
                  )),
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
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: FormBuilderTextField(
                  attribute: 'confirm_password',
                  obscureText: true,
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
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
                        await AuthService()
                            .registerUser(
                                email: _formKey.currentState.value['email'],
                                password: _formKey.currentState.value['password'],
                                details: _formKey.currentState.value)
                            .then((value) => {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()))
                                });
                      }
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
