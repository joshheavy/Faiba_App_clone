import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  // auth change user stream
  Stream<User> get user {
    return _auth.authStateChanges();
  }

  // register with email and password
  Future registerUser(
      {String email, String password, Map<String, dynamic> details}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          // ignore: missing_return
          .then((value) {
        print("User registered successfully");
        _firebaseFirestore.collection("users").add(details);
      });
      final User user = userCredential.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  // sign in with email and password
  Future signIn({String email, String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final user = userCredential.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user');
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  // sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
