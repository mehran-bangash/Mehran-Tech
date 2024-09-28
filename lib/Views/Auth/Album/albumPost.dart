import 'dart:ui' as prefix0;
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/Views/Auth/Album/image_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class albumPost extends StatelessWidget {
  const albumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 600,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png"),
                          fit: BoxFit.cover)),
                  child: BackdropFilter(
                    filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                    child: Container(
                      color: Colors.black.withOpacity(0.7),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Icon(
                                    Icons.arrow_back,
                                    size: 25,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "MehranTech",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                          255, 118, 182, 235)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: GFAvatar(
                                  backgroundColor: Colors.blue,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: GestureDetector(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Hero(
                                    tag:
                                        'https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png',
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png"),
                                  )),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: imageView(
                                            url:
                                                'https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png'),
                                        type: PageTransitionType.fade));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              width: 250,
                              height: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  BalloonSlider(
                                    showRope: false,
                                    ropeLength: 40,
                                    value: 0,
                                    onChanged: (value) {},
                                    onChangeStart: (value) {},
                                    onChangeEnd: (value) {},
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Caption",
                            style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: prefix0.FontWeight.w900,
                                color: Colors.cyan),
                          ),
                          GestureDetector(
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
                                              borderSide: BorderSide(
                                                  color: Colors.green)),
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
                                dismissOnBackKeyPress: true,
                                isDense: false,
                                btnOkText: "confirm Caption",
                                btnOkOnPress: () {},
                              ).show();
                            },
                            child: const Icon(
                              Icons.edit,
                              size: 25,
                              color: Colors.cyan,
                            ),
                          )
                        ],
                      ),
                      FocusedMenuHolder(
                        menuWidth: MediaQuery.of(context).size.width * 0.50,
                        blurSize: 2.0,
                        menuItemExtent: 45,
                        menuBoxDecoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15.0)),
                        duration: Duration(microseconds: 100),
                        animateMenuItems: true,
                        blurBackgroundColor: Colors.black54,
                        menuOffset: 10.0,
                        bottomOffsetHeight: 80.0,
                        menuItems: [
                          FocusedMenuItem(
                              trailingIcon: Icon(FontAwesomeIcons.copy),
                              title: Text(
                                "Copy",
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: prefix0.FontWeight.w700,
                                    color: Colors.black),
                              ),
                              onPressed: () {}),
                          FocusedMenuItem(
                              backgroundColor: Colors.red,
                              trailingIcon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Edit",
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: prefix0.FontWeight.w700,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  body: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText:
                                                "Enter Album drscription",
                                            labelStyle: TextStyle(
                                                fontFamily: "Nunito",
                                                color: Colors.black),
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                    color: Colors.green)),
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
                                  dismissOnBackKeyPress: true,
                                  isDense: false,
                                  btnOkText: "confirm Caption",
                                  btnOkOnPress: () {},
                                ).show();
                              })
                        ],
                        onPressed: () {},
                        child: const ExpandableText(
                          "We will write caption here We will write caption here ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: prefix0.FontWeight.w500),
                          expandText: "show more",
                          collapseText: "show less",
                          linkColor: Colors.orange,
                          maxLines: 2,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Comments",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: prefix0.FontWeight.w900,
                            color: Colors.deepPurple),
                      ),
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return FocusedMenuHolder(
                            onPressed: () {},
                            menuWidth: MediaQuery.of(context).size.width * 0.50,
                            blurSize: 2.0,
                            menuItemExtent: 45,
                            menuBoxDecoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15.0)),
                            duration: Duration(microseconds: 100),
                            animateMenuItems: true,
                            blurBackgroundColor: Colors.black54,
                            menuOffset: 10.0,
                            bottomOffsetHeight: 80.0,
                            menuItems: [
                              FocusedMenuItem(
                                  trailingIcon: Icon(FontAwesomeIcons.copy),
                                  title: Text(
                                    "Copy",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: prefix0.FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                  onPressed: () {}),
                              FocusedMenuItem(
                                  backgroundColor: Colors.red,
                                  trailingIcon: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    "Edit",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: prefix0.FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  onPressed: () {
                                    AwesomeDialog(
                                      context: context,
                                      animType: AnimType.scale,
                                      dialogType: DialogType.noHeader,
                                      body: Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                labelText:
                                                    "Enter Album drscription",
                                                labelStyle: TextStyle(
                                                    fontFamily: "Nunito",
                                                    color: Colors.black),
                                                fillColor: Colors.black,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.green)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .deepPurple))),
                                            keyboardType:
                                                TextInputType.multiline,
                                            maxLines: null,
                                            minLines: 2,
                                          ),
                                        ),
                                      ),
                                      dismissOnBackKeyPress: true,
                                      isDense: false,
                                      btnOkText: "confirm Caption",
                                      btnOkOnPress: () {},
                                    ).show();
                                  }),
                            ],
                            child: ListTileMoreCustomizable(
                              title: Text("Mehran@,",
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: prefix0.FontWeight.w900,
                                      color: Colors.cyan)),
                              leading: GFAvatar(
                                backgroundColor: Colors.blue,
                                size: 25,
                              ),
                              horizontalTitleGap: 0.0,
                              minVerticalPadding: 10.0,
                              minLeadingWidth: 60,
                              contentPadding: const EdgeInsets.all(0),
                              isThreeLine: false,
                              subtitle: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "This is comments",
                                    style: GoogleFonts.nunito(
                                      fontSize: 15,
                                      fontWeight: prefix0.FontWeight.w900,
                                      color: Colors.grey.shade500,
                                    ),
                                  )),
                              trailing: Text(
                                "1 min ago",
                                style: GoogleFonts.nunito(
                                    fontSize: 16, color: Colors.grey.shade500),
                              ),
                              onTap: null,
                              onLongPress: null,
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 60,
                      )
                    ]),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: null,
                    focusNode: null,
                    keyboardType: TextInputType.multiline,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: 3,
                    minLines: 1,
                    style: TextStyle(color: Colors.white),
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                        hintText: "Start a Converstation",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(20),
                        fillColor: Colors.orange,
                        filled: true),
                  ),
                ),
                GestureDetector(
                    child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ))
              ],
            ),
          ),
        )
      ])),
    );
  }
}
