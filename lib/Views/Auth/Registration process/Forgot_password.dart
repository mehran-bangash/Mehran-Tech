import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/Model/Interfaces/Auth/ForgotPassword_services.dart';
import 'package:mehrantech/widget/Textfield.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class forgot extends StatelessWidget {
  final RoundedLoadingButtonController _ForgotController =
      RoundedLoadingButtonController();

  ForgotPasswordServices forgotpasswordservices = ForgotPasswordServices();
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
      body: Column(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 1500,
              child: Image.asset('assets/Forget.png'),
            ),
          ),
          Text(
              " To request for new one, type your email address below.A\n link to rest the password will be sent to that email.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(185, 22, 21, 21),
                fontSize: 12.sp,
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: MyTextField(
                controller: forgotpasswordservices.emailcontroller,
                obscueText: false,
                keybordtype: TextInputType.emailAddress,
                icon: Icons.alternate_email,
                labelText: "Email",
                fontsize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: RoundedLoadingButton(
                color: Colors.green,
                width: double.infinity,
                controller: _ForgotController,
                onPressed: () {},
                child: Text(
                  "Send",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
