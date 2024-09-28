import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/Views/Auth/Homepage/Dashborad.dart';
import 'package:mehrantech/Views/Auth/Profile_setup/myProfile.dart';
import 'package:mehrantech/widget/DrwerListtile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  final GlobalKey<ScaffoldState> _homekey = GlobalKey();

  List<IconData> icons = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];
  int page = 1;
  int pagechanged = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        myprofile(),
        dashboard(),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.blue,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homekey,
      appBar: AppBar(
        title: const Text(
          "MehranTech",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 211, 103, 31)),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              _homekey.currentState!.openDrawer();
            },
            child: Icon(Icons.menu)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 45,
                width: 45,
                child: Image.asset(
                  "assets/messs.PNG",
                  filterQuality: FilterQuality.high,
                )),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: CircularProfileAvatar(
                  "",
                  borderColor: Colors.deepPurple,
                  cacheImage: true,
                  backgroundColor: Colors.blue,
                  elevation: 10,
                  borderWidth: 1,
                  radius: 40,
                  errorWidget: (context, url, error) {
                    return const Icon(
                      Icons.face,
                      size: 50,
                    );
                  },
                  onTap: () {
                    print("Avatar tapped");
                    setState(
                      () {
                        pageController.animateToPage(0,
                            duration: Duration(seconds: 5),
                            curve: Curves.linear);
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animateFromOldImageOnUrlChange: true,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mehran ALi',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'Bangash@gmail.com',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 20, bottom: 4, left: 0, top: 2),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.purple), // Set the background color here
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // You can adjust the border radius as needed
                    )),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Premium",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          const Column(
            children: [
              MylistTile(
                  title: "Subscribption",
                  icons: FontAwesomeIcons.solidCreditCard),
              MylistTile(title: "settings", icons: Icons.settings),
              MylistTile(
                  title: "helps", icons: FontAwesomeIcons.circleQuestion),
              MylistTile(title: "Feedback", icons: FontAwesomeIcons.message),
              MylistTile(title: "Tell others", icons: FontAwesomeIcons.share),
              MylistTile(
                  title: "Rate the app",
                  icons: FontAwesomeIcons.starHalfStroke),
            ],
          ),
          Divider(),
          const MylistTile(
              title: "Sign out", icons: FontAwesomeIcons.rightFromBracket)
        ]),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: icons,
          activeIndex: page,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          activeColor: Colors.purple,
          inactiveColor: Colors.black,
          onTap: (p0) {
            setState(() {
              pagechanged = p0;
              pageController.animateToPage(p0,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            });
          }),
      body: pageViewSection(),
    );
  }
}
