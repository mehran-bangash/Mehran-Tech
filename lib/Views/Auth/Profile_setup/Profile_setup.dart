import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mehrantech/Model/my_user.dart';
import 'package:mehrantech/Views/Auth/AcceptFriend.dart';
import 'package:mehrantech/Views/Controller/User_controller.dart';
import 'package:mehrantech/widget/Textfield.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:image/image.dart' as Im;
import 'package:uuid/uuid.dart';
import 'package:firebase_storage/firebase_storage.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  // ignore: non_constant_identifier_names
  final RoundedLoadingButtonController _ProfileController =
      RoundedLoadingButtonController();

  ImagePicker img = ImagePicker();
  File? file;
  bool isuploading = false;
  final postId = Uuid().v4();
  handlechossedFromGallery() async {
    var getImage = await img.pickImage(
        source: ImageSource.gallery,
        maxHeight: 1080,
        maxWidth: 1920); // it pick the image form gallery
    File io = File(getImage!.path);
    setState(() {
      file = io; //io mean input and output
    });
    if (file != null) {
      uploadToStorage();
    }
  }

  updateAvatarinFirestore({String? mediaurl, String? uid}) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .update({"avatarUrl": mediaurl});
  }

  uploadToStorage() async {
    setState(() {
      isuploading = true;
    });
    await compressImage();
    String? mediaUrl = await uploadImage();

    if (mediaUrl != null) {
      await updateAvatarinFirestore(mediaurl: mediaUrl, uid: myUser!.uid);
    }
  }

  Future<String?> uploadImage() async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child("profilePictures/$postId.jpg")
        .putFile(
            file!); //child mean here is that we craete child in fire base storage

    String? downloadurl;
    uploadTask.then(
      (p0) => p0.ref.getDownloadURL(),
    );
  }

  compressImage() async {
    // it compress the message before the uploading
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    Im.Image? imagefile = Im.decodeImage(
        file!.readAsBytesSync()); // it first the image in deccode in byte
    final compressedImagefile = File("$path /Image_#$postId.jpg")
      ..writeAsBytesSync(
          Im.encodeJpg(imagefile!, quality: 90)); //it encode the message
    setState(() {
      file = compressedImagefile;
    });
  }

  UserController? _currentUser;
  MyUser? myUser;

  @override
  Widget build(BuildContext context) {
    _currentUser = Provider.of<UserController>(context, listen: false);

    setState(() {
      myUser = _currentUser!.getcurrentUser;
    });
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
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Profile.png'),
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "Profile Setup",
                      style: GoogleFonts.poppins(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: CircularProfileAvatar(
                    '', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                    radius: 70, // sets radius, default 50.0
                    backgroundColor: Colors.cyan,
                    // sets background color, default Colors.white
                    initialsText: Text(
                      "+",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),

                    onTap: () {
                      handlechossedFromGallery();
                    }, // sets border, default 0.0
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 50, left: 50),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        width: double.infinity,
                        child: MyTextField(
                            obscueText: false,
                            controller: TextEditingController(),
                            keybordtype: TextInputType.name,
                            icon: Icons.person,
                            labelText: "Your name",
                            fontsize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        width: double.infinity,
                        child: MyTextField(
                            controller: TextEditingController(),
                            obscueText: false,
                            keybordtype: TextInputType.name,
                            icon: Icons.person,
                            labelText: "Your username",
                            fontsize: 14),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blueAccent,
                      ),
                      child: const Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                      child: const Icon(
                        Icons.female_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 70,
                    width: 300,
                    child: RoundedLoadingButton(
                        color: Colors.green,
                        width: double.infinity,
                        controller: _ProfileController,
                        onPressed: () {
                          Timer(Duration(seconds: 5), () {
                            _ProfileController.success();
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: const FindFriend(),
                                    type: PageTransitionType.fade));
                          });
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ), //This is main column
    );
  }
}
