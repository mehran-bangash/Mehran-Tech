import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/_Profile_Setting/features/_profile_settinghead.dart';
import 'package:mehrantech/widget/_Profile_Setting/features/_profile_settingsubhead.dart';
import 'package:getwidget/getwidget.dart';

class profile_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 120)),
                color: Color(0xff671AFc),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50, left: 20, right: 20, bottom: 30),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          "Settings",
                          style: GoogleFonts.nunito(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularProfileAvatar(
                                      "",
                                      backgroundColor: Colors.transparent,
                                      borderColor: Colors.deepPurple,
                                      errorWidget: (context, url, error) {
                                        return Icon(
                                          Icons.face,
                                        );
                                      },
                                      borderWidth: 0.5,
                                      elevation: 5,
                                      onTap: () {},
                                      radius: 30,
                                      cacheImage: true,
                                      placeHolder: (context, url) {
                                        return Container(
                                          child: Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.left,
                                    "Mehran Ali",
                                    style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              color: Colors.grey.shade300,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            profile_settingshead(headText: "Profile Settings"),
                            SizedBox(
                              height: 10,
                            ),
                            profile_subhead(subText: "Edit name"),
                            profile_subhead(subText: "Edit phone Number"),
                            profile_subhead(
                              subText: "Change password",
                            ),
                            profile_subhead(
                              subText: "Email status",
                              secendarywidget: Row(
                                children: [
                                  Text(
                                    "Not verified",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            profile_settingshead(
                                headText: "Notifcations Settings"),
                            profile_subhead(
                              subText: "Push Notifaction",
                              secendarywidget: GFToggle(
                                onChanged: (val) {},
                                enabledTrackColor: Colors.greenAccent,
                                value: true,
                                type: GFToggleType.android,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            profile_settingshead(
                                headText: "Application Settings"),
                            profile_subhead(
                              subText: "Background Update",
                              secendarywidget: Row(
                                children: [
                                  Text(
                                    "Not verified",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
