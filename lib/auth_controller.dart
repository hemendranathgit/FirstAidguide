import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sample/login_page.dart';
import 'package:sample/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  //to access AuthController globally
  late Rx<User?> _user;
  //contains user details
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }
  _initialScreen(User? user){
    if(user==null){
      print("Login Page");
      Get.offAll(()=>LoginPage());

    }else{
      Get.offAll(()=>WelcomePage());
    }
  }

  void register(String email, password)async{
    try{
     await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About USer", "User message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Account Hasn't been created ",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        messageText: Text(
          e.toString(),
            style: TextStyle(
                color: Colors.white
            )
        )
      );
    }
  }
  void login(String email, password)async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login failed",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(
              e.toString(),
              style: TextStyle(
                  color: Colors.white
              )
          )
      );
    }
  }
  void logOut()async{
    await auth.signOut();
  }
  
  handleAuthState(){
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot){
        if(snapshot.hasData){
          return WelcomePage();
        }else{
          return const LoginPage();
        }
    }
    );}
    
    signInWithGoogle() async{
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: <String>["email"]).signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }

  }

