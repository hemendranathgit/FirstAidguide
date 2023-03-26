import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/NavBar.dart';
import 'package:sample/auth_controller.dart';
import 'package:sample/description%20lists/bee_Sting.dart';
import 'package:sample/description%20lists/bleeding.dart';
import 'package:sample/description%20lists/blisters.dart';
import 'package:sample/description%20lists/broken_bone.dart';
import 'package:sample/description%20lists/burns.dart';
import 'package:sample/description%20lists/chowking.dart';
import 'package:sample/description%20lists/frostbite.dart';
import 'package:sample/description%20lists/nosebleeds.dart';
import 'package:sample/description%20lists/sprains.dart';
import 'package:sample/description%20lists/stopped_heart.dart';
import 'package:sample/profile.dart';
import 'package:sample/description lists/First_Aid_Kit.dart';
import 'package:sample/description lists/emg_call.dart';

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
    return SafeArea(
      child: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.red),
            title: Center(child: Text('First Aid Guide',style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),)),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()),
                  );
                },
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>BeeSting()));
                  },
                  title: const Text("1.Bee Sting",style: TextStyle(fontSize: 23,
                  fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Bleeding()));
                  },
                  title: const Text("2.Bleeding",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Blisters()));
                  },
                  title: const Text("3.Blisters",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Broken()));
                  },
                  title: const Text("4. Broken Bone/Fracture",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Burns()));
                  },
                  title: const Text("5.Burns",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Chowking()));
                  },
                  title: const Text("6.chowking",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Frostbite()));
                  },
                  title: const Text("7.Frostbite",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Nosebleeds()));
                  },
                  title: const Text("8.Nosebleeds",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Sprains()));
                  },
                  title: const Text("9.Sprains",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: ()async{
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>StoppedHeart()));
                  },
                  title: const Text("10.Stopped Heart",style: TextStyle(fontSize: 23,
                      fontWeight: FontWeight.bold),),
                ),
                Padding(padding: EdgeInsets.all(45),
                  child: ListTile(
                    leading: IconButton(
                      iconSize: 70,
                      color: Colors.red,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Firstaidkit()),);
                      },
                      icon: Icon(
                        Icons.medical_services_rounded,
                      ),
                    ),
                    trailing: IconButton(
                      iconSize: 70,
                      color: Colors.red,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const EmgCall()),);
                      },
                      icon: Icon(
                        Icons.add_call,
                      ),
                    ),
                  ),),
              ],
            ),
          ),
      ),
    );
  }
}

