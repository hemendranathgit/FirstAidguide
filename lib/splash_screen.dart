//import 'dart:js';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sample/welcome_page.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//       width: double.maxFinite,
//       height: double.maxFinite,
//       color: Colors.red,
//       child: Center(
//         child: Container(
//           width: 100,
//           height: 100,
//           child: Text(
//             'WELCOME RA PUKA', style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//         ),
//       ),
//     );
//   }
//
// }
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



//   Widget build(BuildContext context) {
//     width = MediaQuery.of(context).size.width;
//     height = Me
//     return Container(
//       width: double.maxFinite,
//       height: double.maxFinite,
//       color: Colors.red,
//       child: Center(
//         child: Container(
//           width: 100,
//           height: 100,
//           child: FutureBuilder(
//             future: Future.delayed(Duration(seconds: 20)),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return Text(
//                   'WELCOME RA PUKA',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 );
//               } else {
//                 return CircularProgressIndicator();
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class _Spl
