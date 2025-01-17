import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mehrantech/Views/Auth/Registration%20process/Login.dart';
import 'package:mehrantech/Views/Auth/Registration%20process/Registration.dart';
import 'package:mehrantech/Views/Auth/Splash/splash_loader_animation.dart';
import 'package:mehrantech/Views/Auth/Splash/splash_screen.dart';
import 'package:mehrantech/Views/Controller/User_controller.dart';
import 'package:mehrantech/firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserController(),
        )
      ],
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash(),
        );
      }),
    );
  }
}
