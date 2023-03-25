
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:get/get.dart';
import 'package:sample/Components/store_usr.dart';
import 'package:sample/Components/update_password.dart';
import 'package:sample/constants.dart';
import 'package:sample/welcome_page.dart';

// import '../Components/LogIn.dart';
import '../Components/UserModel.dart';


class Authentication {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static var otp;
  static var _codeController = TextEditingController();

  static final GoogleSignIn googleSignIn = GoogleSignIn();

  static Future<dynamic> resetPassword({required String email}) async {
   // await Logout();
log(email.toString());
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email.trim());
          EasyLoading.showToast('Please check your email');
    } on FirebaseAuthException catch (e) {
      EasyLoading.showToast(e.message.toString());

    }

  }
  static updatepassword(password,currentpassword)async{
try {
  EasyLoading.show();
  var email=auth.currentUser?.email;
  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email:email.toString(),
      password: currentpassword
  ).then((value) async {
    await auth.currentUser?.updatePassword(password).then((value) async {
     await update_password(password);
      EasyLoading.showToast("successfully !!");
    });


  });


}catch(e){}finally{
  EasyLoading.dismiss();
}
  }
  static  signInWithGoogle() async {
    User user;

    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      EasyLoading.show();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
        await auth.signInWithCredential(credential);

        user = userCredential.user!;
        await store_usr(user:new UserModel(email: user.email,id:user.uid,image:user.photoURL,ph: user.phoneNumber,name:user.displayName),flg:1);
        Get.snackbar("",'Successfully logged in');

      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          Get.snackbar("",'The account already exists with a different credential.');

        } else if (e.code == 'invalid-credential') {
          Get.snackbar("",'Error occurred while accessing credentials. Try again.');


        }
        EasyLoading.dismiss();
      } catch (e) {
        EasyLoading.dismiss();
        Get.snackbar("",'Error occurred using Google Sign-In. Try again.');


      }
    }
  }
  static Future<void> Logout() async {
    try {
      EasyLoading.show();
      var sign=await googleSignIn.isSignedIn();
      if(sign){
        await googleSignIn.signOut();
      }

      await auth.signOut();
      THEME_MODE='1';
      // Get.offAll(()=>Login());
    }catch(e){}finally{EasyLoading.dismiss();}
  }

  static  Registration({required UserModel usermodel}) async {
    try {
      EasyLoading.show();
     UserCredential useru= await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: usermodel.email!,
          password: usermodel.password!
      );
        usermodel.id=useru.user?.uid;
       await store_usr(user:usermodel);
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        Get.snackbar("",'The password provided is too weak.');



      } else if (e.code == 'email-already-in-use') {
        Get.snackbar("",'The account already exists for that email.');

      }
    } catch (e) {
      EasyLoading.dismiss();
      Get.snackbar("",'error');

          print(e);
    }
  }
  static Future<void> LoginWithEmail({email,password}) async {
    try {
      EasyLoading.show();
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      EasyLoading.dismiss();
      Get.offAll(()=>WelcomePage());
     // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>tracking()), (route) => false);
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      if (e.code == 'user-not-found') {
        Get.snackbar("",'No user found for that email.');

        print('No user found for that email.');


      } else if (e.code == 'wrong-password') {
        print('Wrong password.');
        Get.snackbar("",'Wrong password.');

      }
    }
  }
}