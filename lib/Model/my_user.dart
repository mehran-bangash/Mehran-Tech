import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? username;
  String? displayname;
  String? avatarUrl;
  String? frinedId;
  String? chatroomId;
  String? phone;
  String? gender;
  bool? isloadingStartupdata;
  Timestamp? accountCreated;
  MyUser(
      {this.uid,
      this.isloadingStartupdata,
      this.email,
      this.password,
      this.username,
      this.accountCreated,
      this.avatarUrl,
      this.chatroomId,
      this.displayname,
      this.frinedId,
      this.gender,
      this.phone});
}
