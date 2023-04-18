import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../Components/UserModel.dart';
import 'upload_profile.dart';

Future<void> set_profile(dynamic file, String name) async {
  EasyLoading.show();
  try {
    var uid = FirebaseAuth.instance.currentUser!.uid;
    var doc = FirebaseDatabase.instance.reference().child('users').child(uid);
    var image = '';
    if (file != null) {
      image = await uploadImage(file);
    }
    await doc.update({
      'name': name,
      'image': image,
    });
    EasyLoading.showToast('successfully!!');
  } catch (e) {
    // handle error here
  } finally {
    EasyLoading.dismiss();
  }
}
