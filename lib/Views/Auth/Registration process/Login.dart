import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/Model/Interfaces/Auth/Login_services.dart';
import 'package:mehrantech/Views/Auth/Registration%20process/Forgot_password.dart';
import 'package:mehrantech/Views/Auth/Profile_setup/Profile_setup.dart';
import 'package:mehrantech/Views/Auth/Registration%20process/Registration.dart';
import 'package:mehrantech/Views/Controller/User_controller.dart';
import 'package:mehrantech/widget/Textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _loginController =
      RoundedLoadingButtonController();

  LoginServices loginServices = LoginServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "MehranTech",
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Sign in to MehranTech",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp,
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
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  MyTextField(
                      obscueText: false,
                      keybordtype: TextInputType.emailAddress,
                      icon: Icons.email_outlined,
                      labelText: "Email",
                      controller: loginServices.emailcontroller,
                      fontsize: 14),
                  const SizedBox(
                    height: 15,
                  ),
                  MyTextField(
                      obscueText: true,
                      controller: loginServices.passwordcontroller,
                      keybordtype: TextInputType.text,
                      icon: Icons.lock,
                      labelText: "Password",
                      fontsize: 14),
                  const SizedBox(
                    height: 20,
                  ),
                  Hero(
                    tag: "Auth",
                    child: RoundedLoadingButton(
                        color: Colors.green,
                        width: 400,
                        controller: _loginController,
                        onPressed: () {
                          UserController().loginUser(
                              loginServices.emailcontroller.text,
                              loginServices.passwordcontroller.text);
                          // Timer(const Duration(seconds: 3), () {
                          //   _loginController.success();

                          //   Navigator.pushReplacement(
                          //       context,
                          //       PageTransition(
                          //           type: PageTransitionType.fade,
                          //           child: profile()));

                          // });
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: forgot(),
                                    type: PageTransitionType.fade));
                          },
                          child: Text(
                            "Forgot your password",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "Do not have account ",
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
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: Register(),
                                      type: PageTransitionType.fade));
                            },
                            child: Text(
                              "Sign up ",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(216, 7, 69, 175)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ), //This is Main body column
      ),
    );
  }
}
