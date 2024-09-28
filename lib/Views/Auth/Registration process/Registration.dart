// ignore_for_file: must_be_immutable

import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/Model/Interfaces/Auth/register_services.dart';
import 'package:mehrantech/Views/Auth/Registration%20process/Login.dart';
import 'package:mehrantech/Views/Controller/User_controller.dart';
import 'package:mehrantech/widget/Textfield.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _RegisterController =
      RoundedLoadingButtonController();

  RegisterServices registerServices = RegisterServices();

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "MehranTech",
          style: GoogleFonts.poppins(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      "Sign up to MehranTech",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      "To connect with \n your partner",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(35),
                  child: Column(children: [
                    MyTextField(
                        obscueText: false,
                        controller: registerServices.usernamecontroller,
                        keybordtype: TextInputType.name,
                        icon: Icons.person,
                        labelText: "Username",
                        fontsize: 13),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                        obscueText: false,
                        controller: registerServices.emailcontroller,
                        keybordtype: TextInputType.name,
                        icon: Icons.person,
                        labelText: "Email",
                        fontsize: 14),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                        obscueText: true,
                        controller: registerServices.passwordcontroller,
                        keybordtype: TextInputType.text,
                        icon: Icons.password,
                        labelText: "Password",
                        fontsize: 14),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                        obscueText: true,
                        keybordtype: TextInputType.text,
                        controller: registerServices.confimpasswordcontroller,
                        icon: Icons.lock,
                        labelText: "Confirm password",
                        fontsize: 14),
                  ])),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Hero(
                  tag: "Auth",
                  child: RoundedLoadingButton(
                      color: const Color(0xff00c1AA),
                      width: 2000,
                      borderRadius: 10,
                      controller: _RegisterController,
                      onPressed: () {
                        if (registerServices.passwordcontroller.text ==
                            registerServices.confimpasswordcontroller.text) {
                          UserController().registerUser(
                            registerServices.emailcontroller.text,
                            registerServices.passwordcontroller.text,
                          );
                        } else {
                          AchievementView(
                                  title: "Error",
                                  subTitle: "Password do not match",
                                  color: Colors.red,
                                  listener: (status) {})
                              .show(context);
                        }
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      child: const Text(
                        "By registering you agree to our terms and conditions",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Already have registered?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: Login(), type: PageTransitionType.fade)),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2F76EA)),
                    ),
                  ),
                ],
              ),
            ],
          ), //This Is main column
        ),
      ),
    );
  }
}
