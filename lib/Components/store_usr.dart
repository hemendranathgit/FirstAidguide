import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sample/login_page.dart';
import 'package:sample/welcome_page.dart';


import 'UserModel.dart';

Future<void> store_usr({required UserModel user,flg=0})async{
  try {
    var exist=await FirebaseFirestore.instance.collection('users').doc(user.id).get();
if(exist.exists&&flg==1)
  {
    Get.offAll(()=>WelcomePage());
    return;
  }
    await FirebaseFirestore.instance.collection('users').doc(user.id).set(
        user.tojson());
    if(flg==0)
    Get.to(()=>LoginPage());
    else
      Get.offAll(()=>WelcomePage());
  }catch(e){}finally{
    EasyLoading.dismiss();
  }
}