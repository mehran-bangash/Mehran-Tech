import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/Views/Auth/Album/Friend_album.dart';
import 'package:mehrantech/Views/Auth/Album/my_Album.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class album extends StatefulWidget {
  const album({super.key});

  @override
  State<album> createState() => _albumState();
}

class _albumState extends State<album> with SingleTickerProviderStateMixin {
  int _bottomNavindex = 0;
  int pageView = 0;
  List<IconData> iconsList = [Icons.person_outlined, Icons.people_outlined];

  PageController pageController = PageController(initialPage: 0);

  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          pageView = value;
        });
      },
      children: [MyAlbum(), FriendAlbum()],
    );
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    curve = CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "MehranTech",
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 118, 182, 235)),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
            onPressed: () {},
            splashColor: const Color(0xffFFa400),
            elevation: 5,
            backgroundColor: const Color(0xffFFa400),
            child: const Icon(Icons.add, color: Color(0xFF373A36))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconsList,
        activeColor: Colors.pink,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.center,
        activeIndex: _bottomNavindex,
        onTap: (p0) {
          setState(() {
            _bottomNavindex = p0;
            pageController.animateToPage(p0,
                duration: Duration(milliseconds: 2), curve: Curves.linear);
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}
