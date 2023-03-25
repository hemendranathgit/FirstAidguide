import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../Components/UserModel.dart';
import '../constants.dart';

Future<void> get_profile()async{
  try {
    var uid= FirebaseAuth.instance.currentUser?.uid;
    var doc= FirebaseFirestore.instance.collection('users').doc(uid);
    var exist=await doc.get();

    USER_PROFILE= exist.data();

  }catch(e){}finally{
    EasyLoading.dismiss();
  }
}