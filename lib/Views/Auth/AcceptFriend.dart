import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:mehrantech/Views/Auth/recievedrequest.dart";
import "package:page_transition/page_transition.dart";
import "package:responsive_sizer/responsive_sizer.dart";

class FindFriend extends StatelessWidget {
  const FindFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MehranTech",
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 118, 182, 235)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: recieved(), type: PageTransitionType.fade));
              },
              child: const Icon(
                Icons.person,
                size: 35,
                color: Colors.purple,
              ),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Center(
                child: Text(
                  "Find your Friends",
                  style: GoogleFonts.poppins(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      textAlignVertical: TextAlignVertical.center,
                      autofocus: false,
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 241, 241, 243),
                          filled: true,
                          label: const Text(
                            "Search here",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 100, 98, 98)),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange,
                    ),
                    child: const Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 130, left: 100, top: 10),
              child: Container(
                height: 115,
                width: double.infinity,
                child: Card(
                  elevation: 20,
                  color: Colors.white,
                  shadowColor: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "@MehranBangash46",
                                    style: GoogleFonts.nunito(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Mehran",
                                    style: GoogleFonts.nunito(
                                        color: const Color.fromARGB(
                                            255, 131, 130, 130),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 180,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0))),
                                ),
                                child: Text(
                                  "Accept",
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0))),
                                ),
                                child: Text(
                                  "Decline",
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "assets/fiend.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "search for your friend on MehranTech or invite",
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 204, 203, 203)),
            ),
            Text(
              "your friend to MehranTech",
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 204, 203, 203)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0))),
              ),
              child: Text(
                "invite Friend",
                style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ), //This is the main coumn
    );
  }
}
