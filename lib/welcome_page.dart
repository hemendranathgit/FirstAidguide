import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/NavBar.dart';
import 'package:sample/auth_controller.dart';
//import 'package:sidbar/NavBar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  _WelcomePageState createState() => _WelcomePageState();

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          title: Center(child: Text('First Aid Guide',style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),)),
          backgroundColor: Colors.white,
        ),
        endDrawer: Drawer(

        ),
        backgroundColor: Colors.white,
        // body: Column(
        //
        //   children: [
        //     SizedBox(height: 147.6,),
        //     GestureDetector(
        //       onTap: (){
        //         AuthController.instance.logOut();
        //       },
        //       child: Container(
        //         width: w*0.09,
        //         height: h*0.03,
        //         decoration: BoxDecoration(
        //             image: DecorationImage(image: AssetImage("img/menu_nav.png"
        //             ),
        //                 fit: BoxFit.cover
        //             )
        //         ),
        //       ),
        //     ),
        //     SizedBox(height: 10.9,),
        //
        //   ],
        // )
    );
  }
}

