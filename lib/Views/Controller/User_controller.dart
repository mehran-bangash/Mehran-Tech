import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:mehrantech/Model/my_user.dart';
import 'package:mehrantech/widget/Device_info/Service/user_database.dart';

class UserController with ChangeNotifier {
  MyUser currentUser = MyUser();

  MyUser get getcurrentUser => currentUser;

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<bool> registerUser(
    String e,
    String pwd,
  ) async {
    MyUser user = MyUser();

    try {
      UserCredential authResult = await auth.createUserWithEmailAndPassword(
        email: e,
        password: pwd,
      );
      UserCredential loginResult =
          await auth.signInWithEmailAndPassword(email: e, password: pwd);
      if (authResult.user != null) {
        print("Adding info to Databse");
        user.uid = authResult.user!.uid;
        user.email = authResult.user!.email;
        user.password = pwd;
        UserDatabase().CreateUserinDb(user);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> loginUser(
    String e,
    String pswd,
  ) async {
    try {
      UserCredential loginResult =
          await auth.signInWithEmailAndPassword(email: e, password: pswd);
      if (loginResult.user != null) {
        currentUser =
            await UserDatabase().getUserinfoById(loginResult.user!.uid);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> signout(
    String e,
    String pswd,
  ) async {
    try {
      await auth.signOut();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  void setCurrentUser(MyUser user) {
    currentUser = user;
    notifyListeners();
  }

  Future<MyUser?> checkUserSigninfo() async {
    try {
      MyUser myUser = MyUser();
      myUser.isloadingStartupdata = true;
      currentUser = myUser;
      auth.authStateChanges().listen(
        (event) async {
          if (event?.uid == null) {
            myUser.uid = null; // if user  not sign in
            myUser.isloadingStartupdata = false;
            setCurrentUser(myUser);
            currentUser = myUser;
          } else {
            myUser.uid = event?.uid;
            myUser =
                await UserDatabase().getUserinfoById(auth.currentUser!.uid);
            myUser.isloadingStartupdata = false;
            setCurrentUser(myUser);
          }
        },
      );
      return myUser;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
