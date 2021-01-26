import 'package:faiba/pages/authentication.dart';
import 'package:faiba/pages/home.dart';
import 'package:faiba/providers/agent_provider.dart';
import 'package:faiba/providers/bundles_provider.dart';
import 'package:faiba/providers/shop_provider.dart';
import 'package:faiba/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ShopProvider>(create: (_) => ShopProvider()),
        ChangeNotifierProvider<AgentProvider>(create: (_) => AgentProvider()),
        ChangeNotifierProvider<BundleProvider>(create: (_) => BundleProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Faiba',
        theme: ThemeData(primarySwatch: Colors.green),
        home: Wrapper(),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
        stream: AuthService().user,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data == null) {
            return Home();
          }
          return Authentication();
        });
  }
}
