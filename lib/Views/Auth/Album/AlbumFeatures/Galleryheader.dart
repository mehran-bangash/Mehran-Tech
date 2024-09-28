import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalleryHeader extends StatelessWidget {
  final BuildContext context;
  final String tuval;
  final String toval;
  final bool isEditable;
  final String name;
  final String decription;

  GalleryHeader(
      {required this.context,
      required this.tuval,
      required this.toval,
      required this.isEditable,
      required this.name,
      required this.decription});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(50),
          ),
          color: Color(0xffFafad2),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 6.0)
          ]),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffF7d800), Color(0xffF7A100)],
                  stops: [0.0, 0.5]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(50)),
              color: Color(0xffFafad2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Gallery",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                CircularProfileAvatar(
                  "",
                  cacheImage: true,
                  borderColor: Colors.black,
                  backgroundColor: Colors.blue,
                  borderWidth: 0.5,
                  elevation: 20,
                  radius: 40,
                  onTap: () => null,
                  animateFromOldImageOnUrlChange: true,
                  errorWidget: (context, url, error) {
                    return Icon(Icons.face, size: 20);
                  },
                  placeHolder: (context, url) {
                    return Center(child: CircularProgressIndicator());
                  },
                ),
                Text(
                  name,
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                Text(
                  decription,
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total upload",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      Text(
                        tuval,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.deepOrangeAccent),
                      ),
                    ],
                  ),
                ),
                isEditable
                    ? GestureDetector(
                        onTap: () {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.noHeader,
                            body: Center(
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: "Enter Album drscription",
                                      labelStyle: TextStyle(
                                          fontFamily: "Nunito",
                                          color: Colors.black),
                                      fillColor: Colors.black,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide:
                                              BorderSide(color: Colors.green)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple))),
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  minLines: 2,
                                ),
                              ),
                            ),
                            btnOkOnPress: () {},
                          ).show();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color(0xff633494),
                                Color(0xff5656Ac)
                              ])),
                        ),
                      )
                    : Container(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Times Opended",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      Text(
                        toval,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.deepOrangeAccent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
