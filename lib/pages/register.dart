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
              SizedBox(height: 20.0,),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                child: FormBuilderTextField(
                  name: 'firstname',
                  decoration: InputDecoration(
                    labelText:
                    'First name',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context)
                  ]),
                  keyboardType: TextInputType.number,
                ),),
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
      ),
    );
  }
}