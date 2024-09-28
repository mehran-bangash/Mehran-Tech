import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehrantech/widget/Device_info/userstatus/Features/Onevaluecard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserStatus extends StatefulWidget {
  const UserStatus({super.key});

  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = [
    "AWAY",
    "DO NO DISTRUB",
    "DRIVING",
    "EATING",
  ];

  List<String> status2 = ["METING", "OUTDORRS", "SLEEPING", "MOENING"];

  String selectStatus = "Away";
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
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff86AAE8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "User status:",
                    style: GoogleFonts.nunito(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "User is",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Text(
                                          textAlign: TextAlign.end,
                                          "ONLINE",
                                          style: GoogleFonts.nunito(
                                              fontSize: 19.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueAccent))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 3),
                                    child: Expanded(
                                      child: Text(
                                        "Last App Action",
                                        style: GoogleFonts.nunito(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                        textAlign: TextAlign.start,
                                        "2 minutes ago",
                                        style: GoogleFonts.nunito(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueAccent)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 3),
                                child: Text(
                                  "User  Status",
                                  style: GoogleFonts.nunito(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                  textAlign: TextAlign.start,
                                  "DRIVING",
                                  style: GoogleFonts.nunito(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      textAlign: TextAlign.start,
                      "Last updated:",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                  Text(
                      textAlign: TextAlign.start,
                      "1 min ago",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My status: ",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 90, 89, 89)),
                        ),
                        Text(
                          "EATING",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: status.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectStatus = status[index];
                                });
                              },
                              child: myvalueCard(
                                value: status[index],
                                clr: selectStatus == status[index]
                                    ? Colors.blue
                                    : Color(0xFF84abe4),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectStatus = status2[index];
                                });
                              },
                              child: myvalueCard(
                                value: status2[index],
                                clr: selectStatus == status2[index]
                                    ? Colors.blue
                                    : Color(0xFF84abe4),
                              ),
                            )
                          ],
                        );
                      },
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
