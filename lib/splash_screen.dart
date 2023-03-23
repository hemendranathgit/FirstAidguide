import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sample/login_page.dart';
import 'package:sample/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


var wedalpu;
var podugu;

class _SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context){
    wedalpu = MediaQuery.of(context).size.width;
    podugu = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Get.offAll (()=>WelcomePage());
        },
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: podugu/4,),
                Image.asset("img/menu_nav.png"),
                Text("PORA PUKA",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

