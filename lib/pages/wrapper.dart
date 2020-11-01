import 'package:faiba/pages/authentication.dart';
import 'package:faiba/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return either Home or Authenticate
    if (user == null) {
      return Authentication();
    } else {
      return Home();
    }
  }
}
