import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';
import '../Components/UserModel.dart';
import '../constants.dart';

Future<void> get_profile() async {
  try {
    var uid = FirebaseAuth.instance.currentUser?.uid;
    var doc = FirebaseDatabase.instance.reference().child("users").child(uid!).child("name"); // Added ! to indicate that uid cannot be null
    var exist = await doc.once();

    // Check if the snapshot exists and has data
    if (exist != null && exist.snapshot.value != null) {
      // Get the value of the DataSnapshot object as a Map<dynamic, dynamic>
      var userProfileData = exist.snapshot.value;

      USER_PROFILE = userProfileData;
    }
  } catch(e) {
    // Handle any errors here
  } finally {
    EasyLoading.dismiss();
  }
}
