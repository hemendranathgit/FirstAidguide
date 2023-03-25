import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'upload_profile.dart';

Future<void> update_password(value)async{
  try {

    var uid= FirebaseAuth.instance.currentUser?.uid;
    var doc= FirebaseFirestore.instance.collection('users').doc(uid);

    await doc.update({
      'password':value,
    });

  }catch(e){}finally{
    //EasyLoading.dismiss();
  }
}