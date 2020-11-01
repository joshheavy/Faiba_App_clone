import 'package:faiba/pages/authentication.dart';
import 'package:faiba/pages/home.dart';
import 'package:faiba/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Wrapper(),
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

// class MyApp extends StatelessWidget {
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: _initialization,
//         builder: (context, snapshot) {
//           // check for errors
//           if (snapshot.hasError) {
//             return CircularProgressIndicator();
//           }

//           // Once complete, show your application
//           if (snapshot.connectionState == ConnectionState.done) {
//             return StreamProvider.value(
//               value: AuthService().user,
//               child: MaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 theme: ThemeData(
//                   primaryColor: Colors.green,
//                 ),
//                 home: Authentication(),
//               ),
//             );
//           }
//           // Otherwise, show something whilst waiting for initialization to complete
//           return Loading();
//         });
//   }
// }

// class Loading extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SpinKitRing(
//       color: Colors.green,
//       size: 50.0,
//     );
//   }
// }
