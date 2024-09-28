import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mehrantech/Views/Auth/AcceptFriend.dart';
import 'package:mehrantech/Views/Auth/Homepage/homepage.dart';
import 'package:mehrantech/Views/Auth/Profile_setup/Profile_setup.dart';
import 'package:mehrantech/Views/Auth/Registration%20process/Login.dart';
import 'package:mehrantech/Views/Auth/Splash/splash_loader_animation.dart';
import 'package:mehrantech/Views/Controller/User_controller.dart';
import 'package:provider/provider.dart';

enum AuthStatus {
  firstTime,
  authenticating,
  notLogin,
  loggedinHome,
  noProfile,
  noFriend,
}

class Root extends StatelessWidget {
  AuthStatus authStatus = AuthStatus.authenticating;
  @override
  Widget build(BuildContext context) {
    UserController userController =
        Provider.of<UserController>(context, listen: true);
    return FutureBuilder(
      future: null,
      builder: (context, snapshot) {
        if (userController.currentUser.uid == null) {
          authStatus = AuthStatus.notLogin;
        }
        if (userController.currentUser.uid != null) {
          if (userController.currentUser.displayname == null) {
            authStatus = AuthStatus.noProfile;
          }
          if (userController.currentUser.displayname != null &&
              userController.currentUser.frinedId == null) {
            authStatus = AuthStatus.noFriend;
          }
          if (userController.currentUser.displayname != null &&
              userController.currentUser.frinedId != null) {
            authStatus = AuthStatus.loggedinHome;
          }
        }
        switch (authStatus) {
          case AuthStatus.authenticating:
            return SplashAnimator();
          case AuthStatus.noProfile:
            return profile();
          case AuthStatus.noFriend:
            return FindFriend();
          case AuthStatus.notLogin:
            return Login();
          case AuthStatus.loggedinHome:
            return Myhome();
          case AuthStatus.firstTime:
            return Container();

          default:
            return SplashAnimator();
        }
      },
    );
  }
}
