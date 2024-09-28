import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mehrantech/Model/my_user.dart';

class UserDatabase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // ignore: non_constant_identifier_names
  Future<bool> CreateUserinDb(MyUser user) async {
    try {
      await firestore.collection("users").doc(user.uid).set({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "Username": user.username,
        "Displayname": user.displayname,
        "Avaterurl": user.avatarUrl,
        "FriendId": user.frinedId,
        "ChatroomId": user.chatroomId,
        "Phone": user.phone,
        "gender": user.gender,
        "accountedCreated": Timestamp.now(),
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<MyUser> getUserinfoById(String uid) async {
    MyUser myUser = MyUser();
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestore
        .collection("users")
        .doc("RpSzFHoMbTShHEb0PNxdz8YJUM92")
        .get();
    myUser.uid = documentSnapshot.data()!["uid"];
    myUser.email = documentSnapshot.data()!["email"];
    myUser.avatarUrl = documentSnapshot.data()!["avaterUrl"];
    myUser.username = documentSnapshot.data()!["username"];
    myUser.displayname = documentSnapshot.data()!["displayname"];
    myUser.frinedId = documentSnapshot.data()!["frinedId"];
    myUser.gender = documentSnapshot.data()!["gender"];
    myUser.phone = documentSnapshot.data()!["phone"];

    return myUser;
  }
}
