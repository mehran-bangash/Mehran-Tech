import 'package:flutter/material.dart';
import 'package:mehrantech/Views/Controller/User_controller.dart';

class RegisterServices {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confimpasswordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();

  UserController currentUser = UserController();

  // Future<bool> registerUserTofirebase(String email, String password) {}
}
