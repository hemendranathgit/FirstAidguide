import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/ContactUs.dart';

import 'Components/custom_button.dart';
import 'auth_controller.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
        color: Colors.black,



        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.only(left: 20),
          children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text('Drawer Header'),
          // ),
          SizedBox(height: 30,),
        ListTile(
          leading: Icon(
              Icons.settings,
              size: 30,color: Colors.grey
          ),
          title:  Text('Settings',style: TextStyle(fontSize: 24,color: Colors.white,),
        ),
      ),
            ListTile(
                leading: Icon(
                    Icons.light,
                    size: 30,color: Colors.grey
                ),
                title:  Text('Theme',style: TextStyle(fontSize: 24,color: Colors.white,),
            )
            ),
            SizedBox(height: 230,),

            GestureDetector(
              child: Icon(
                Icons.notifications, size: 30,color: Colors.grey,
              ),
            ),
            SizedBox(height: 2,width: 1,),
            Center(
              child: custom_button((
                  ){
                showDialog(
                  context: context, //current context is required
                  builder: (ctx) => AlertDialog(
                    title: Text("First Aid Guide"),
                    content: Text("first aid is a way to prevent a person's condition from worsening and keep them alive until paramedics arrive or they are taken to the hospital."),
                    actions: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text("okay"),
                      )
                    ],
                  ),
                );
              },"Notifications"),),
            SizedBox(height: 230,width: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push((context), MaterialPageRoute(builder: (context)=>ContactUs()));
              },
              child: Center(
                child: Container(
                  width: w*0.59,
                  height: h*0.05,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("img/loginbutton.png"
                      ),
                          fit: BoxFit.cover
                      )
                  ),
                  child:Center(
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ) ,
                ),
              ),
            ),
      ]
    )
    )
    );
  }
}
