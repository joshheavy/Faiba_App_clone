import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
void ChangeScreen(BuildContext context, Widget widget){
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

// ignore: non_constant_identifier_names
void ChangeScreenReplacement(BuildContext context, Widget widget){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));
}