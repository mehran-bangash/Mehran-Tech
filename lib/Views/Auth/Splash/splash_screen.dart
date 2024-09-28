import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mehrantech/Model/my_user.dart';
import 'package:mehrantech/Views/Auth/Root/root.dart';
import 'package:mehrantech/Views/Auth/Splash/splash_loader_animation.dart';
import 'package:mehrantech/Views/Controller/User_controller.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  UserController userController = UserController();

  Splash({super.key});
  @override
  Widget build(BuildContext context) {
    userController = Provider.of<UserController>(context, listen: false);
    if (userController.currentUser.uid == null) {
      return FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Root();
          } else {
            return const SplashAnimator();
          }
        },
        future: userController.checkUserSigninfo(),
      );
    } else {
      return Root();
    }
  }
}
