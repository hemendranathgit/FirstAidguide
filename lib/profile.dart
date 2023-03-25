import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sample/Components/custom_button.dart';
import 'package:sample/Components/custom_heading_text.dart';
import 'package:sample/Components/get_profile.dart';
import 'package:sample/Components/set_profile.dart';
import 'package:sample/auth_controller.dart';

import '../Components/custom_textfield.dart';
import '../Components/Authentication.dart';
import '../constants.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}
var wdth;
var hght;

class _profileState extends State<profile> {
  static final ImagePicker _picker = ImagePicker();

  var imagefile;

  bool obsecure=true;
  @override
  Widget build(BuildContext context) {
    wdth=MediaQuery.of(context).size.width;
    hght=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.redAccent
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 0.5,),
            Text(" ",style: TextStyle(color: Colors.lightGreen,fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(width: 0.5,),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: hght/20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.grey.shade200,
                        child: CircleAvatar(
                          radius: 70,
child: ClipRRect(
  borderRadius: BorderRadius.circular(100),
  child: Image.network(
      USER_PROFILE==null?"":USER_PROFILE['image']??"",
      width: 200,height: 200,fit:BoxFit.fill,
      errorBuilder: (BuildContext context, Object exception,
          StackTrace? stackTrace) {
        return
          Image.asset("img/IMG_1405.JPG",
          );
      },
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes !=
                null
                ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
                : null,
          ),);}),
),                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: Container(
                          child: GestureDetector(
                            onTap: (){
                              Imagepickerchoicedialog();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.add_a_photo, color: (THEME_MODE=='1')?WHITE_COLOR:BLACK_COLOR),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  50,
                                ),
                              ),
                              color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2, 4),
                                  color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR.withOpacity(
                                    0.3,
                                  ),
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: hght/60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  custom_heading_text( USER_PROFILE==null?"":USER_PROFILE['name']??" "),
                  GestureDetector(
                      onTap: (){
                        var subject=TextEditingController();

                        showGeneralDialog(
                          context: context,
                          barrierLabel: "Barrier",
                          barrierDismissible: true,
                          barrierColor: BLACK_COLOR.withOpacity(0.5),
                          transitionDuration: Duration(milliseconds: 700),
                          pageBuilder: (_, __, ___) {
                            return Center(
                              child: Container(
                                color:(THEME_MODE=='1')?WHITE_COLOR:BLACK_COLOR,
                                height: 200,
                                padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                                width: MediaQuery.of(context).size.width,
                                child: SizedBox.expand(child:
                                Column(children: [
                                  custom_textfield(hinttitle: 'Name',controller: subject,),
                                  SizedBox(height: 15,),
                                  custom_button(() async {
                                    try {
                                      if(subject.text.trim().isEmpty)return;
                                      await set_profile(imagefile, USER_PROFILE['image']??"", subject.text, USER_PROFILE['age']??"", USER_PROFILE['phone']??"", USER_PROFILE['gender']??"");
                                      await get_profile();
                                      if(mounted)
                                        setState(() {

                                        });
                                      Navigator.pop(context);
                                    }catch(e){
                                      print(e);
                                    }finally{
                                    }
                                  }, 'Edit')
                                ],)
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                            );
                          },
                          transitionBuilder: (_, anim, __, child) {
                            Tween<Offset> tween;
                            if (anim.status == AnimationStatus.reverse) {
                              tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
                            } else {
                              tween = Tween(begin: Offset(1, 0), end: Offset.zero);
                            }

                            return SlideTransition(
                              position: tween.animate(anim),
                              child: FadeTransition(
                                opacity: anim,
                                child: child,
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(Icons.edit,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR)),
                ],
              ),
              SizedBox(height: hght/60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Age:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  Text("${ USER_PROFILE==null?"":USER_PROFILE['age']??""} years",style: TextStyle(fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  GestureDetector(
                      onTap: (){
                        var subject=TextEditingController();

                        showGeneralDialog(
                          context: context,
                          barrierLabel: "Barrier",
                          barrierDismissible: true,
                          barrierColor: BLACK_COLOR.withOpacity(0.5),
                          transitionDuration: Duration(milliseconds: 700),
                          pageBuilder: (_, __, ___) {
                            return Center(
                              child: Container(
                                color: (THEME_MODE=='1')?WHITE_COLOR:BLACK_COLOR,
                                height: 200,
                                padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                                width: MediaQuery.of(context).size.width,
                                child: SizedBox.expand(child:
                                Column(children: [
                                  custom_textfield(hinttitle: 'Age',controller: subject,),
                                  SizedBox(height: 15,),
                                  custom_button(() async {
                                    try {
                                      if(subject.text.trim().isEmpty)return;
                                      await set_profile(imagefile, USER_PROFILE['image']??"", USER_PROFILE['name']??"", subject.text, USER_PROFILE['phone']??"", USER_PROFILE['gender']??"");
                                      await get_profile();
                                      if(mounted)
                                        setState(() {

                                        });
                                      Navigator.pop(context);
                                    }catch(e){
                                      print(e);
                                    }finally{
                                    }
                                  }, 'Edit')
                                ],)
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                            );
                          },
                          transitionBuilder: (_, anim, __, child) {
                            Tween<Offset> tween;
                            if (anim.status == AnimationStatus.reverse) {
                              tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
                            } else {
                              tween = Tween(begin: Offset(1, 0), end: Offset.zero);
                            }

                            return SlideTransition(
                              position: tween.animate(anim),
                              child: FadeTransition(
                                opacity: anim,
                                child: child,
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(Icons.edit,color: (THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR,)),
                ],
              ),
              SizedBox(height: hght/60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Gender:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  Text( USER_PROFILE==null?"":USER_PROFILE['gender']??"",style: TextStyle(fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  GestureDetector(
                      onTap: (){
                        var subject=TextEditingController();

                        showGeneralDialog(
                          context: context,
                          barrierLabel: "Barrier",
                          barrierDismissible: true,
                          barrierColor: BLACK_COLOR.withOpacity(0.5),
                          transitionDuration: Duration(milliseconds: 700),
                          pageBuilder: (_, __, ___) {
                            return Center(
                              child: Container(
                                color:(THEME_MODE=='1')?WHITE_COLOR:BLACK_COLOR,
                                height: 200,
                                padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                                width: MediaQuery.of(context).size.width,
                                child: SizedBox.expand(child:
                                Column(children: [
                                  custom_textfield(hinttitle: 'Gender',controller: subject,),
                                  SizedBox(height: 15,),
                                  custom_button(() async {
                                    try {
                                      if(subject.text.trim().isEmpty)return;
                                      await set_profile(imagefile, USER_PROFILE['image']??"", USER_PROFILE['name']??"", USER_PROFILE['age']??"", USER_PROFILE['phone']??"", subject.text);
                                      await get_profile();
                                      if(mounted)
                                        setState(() {

                                        });
                                      Navigator.pop(context);
                                    }catch(e){
                                      print(e);
                                    }finally{
                                    }
                                  }, 'Edit')
                                ],)
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                            );
                          },
                          transitionBuilder: (_, anim, __, child) {
                            Tween<Offset> tween;
                            if (anim.status == AnimationStatus.reverse) {
                              tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
                            } else {
                              tween = Tween(begin: Offset(1, 0), end: Offset.zero);
                            }

                            return SlideTransition(
                              position: tween.animate(anim),
                              child: FadeTransition(
                                opacity: anim,
                                child: child,
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(Icons.edit,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR)),
                ],
              ),
              SizedBox(height: hght/60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("E-mail:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  Container(width: wdth/1.4,child: SingleChildScrollView( scrollDirection: Axis.horizontal,child: Text( USER_PROFILE==null?"":USER_PROFILE['email']??"",style: TextStyle(fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),))),
                 // Icon(Icons.edit),
                ],
              ),
              SizedBox(height: hght/60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Phone Number:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  Text( USER_PROFILE==null?"":USER_PROFILE['phone']??"",style: TextStyle(fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  GestureDetector(
                      onTap: (){
                        var subject=TextEditingController();

                        showGeneralDialog(
                          context: context,
                          barrierLabel: "Barrier",
                          barrierDismissible: true,
                          barrierColor: BLACK_COLOR.withOpacity(0.5),
                          transitionDuration: Duration(milliseconds: 700),
                          pageBuilder: (_, __, ___) {
                            return Center(
                              child: Container(
                                color:(THEME_MODE=='1')?WHITE_COLOR:BLACK_COLOR,
                                height: 200,
                                padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                                width: MediaQuery.of(context).size.width,
                                child: SizedBox.expand(child:
                                Column(children: [
                                  custom_textfield(hinttitle: 'Phone',controller: subject,),
                                  SizedBox(height: 15,),
                                  custom_button(() async {
                                    try {
                                      if(subject.text.trim().isEmpty)return;
                                      await set_profile(imagefile, USER_PROFILE['image']??"", USER_PROFILE['name']??"", USER_PROFILE['age']??"", subject.text, USER_PROFILE['gender']??"");
                                      await get_profile();
                                      if(mounted)
                                        setState(() {

                                        });
                                      Navigator.pop(context);
                                    }catch(e){
                                      print(e);
                                    }finally{
                                    }
                                  }, 'Edit')
                                ],)
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                            );
                          },
                          transitionBuilder: (_, anim, __, child) {
                            Tween<Offset> tween;
                            if (anim.status == AnimationStatus.reverse) {
                              tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
                            } else {
                              tween = Tween(begin: Offset(1, 0), end: Offset.zero);
                            }

                            return SlideTransition(
                              position: tween.animate(anim),
                              child: FadeTransition(
                                opacity: anim,
                                child: child,
                              ),
                            );
                          },
                        );
                      },
                      child: Icon(Icons.edit,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR)),
                ],
              ),
              SizedBox(height: hght/60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Password: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  Text( USER_PROFILE==null?"":obsecure==true?'********':USER_PROFILE['password'],style: TextStyle(fontSize: 20,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),),
                  GestureDetector(
                      onTap: (){
                        obsecure=obsecure==true?false:true;
                        setState(() {

                        });
                      },
                      child: Icon(Icons.remove_red_eye,color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR)),
                ],
              ),
              SizedBox(height: hght/40,),
              custom_button((){
                var subject=TextEditingController();
                var currentpassword=TextEditingController();

                showGeneralDialog(
                  context: context,
                  barrierLabel: "Barrier",
                  barrierDismissible: true,
                  barrierColor: BLACK_COLOR.withOpacity(0.5),
                  transitionDuration: Duration(milliseconds: 700),
                  pageBuilder: (_, __, ___) {
                    return Center(
                      child: Container(
                        color:(THEME_MODE=='1')?WHITE_COLOR:BLACK_COLOR,
                        height: 250,
                        padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox.expand(child:
                        Column(children: [
                          custom_textfield(hinttitle: 'Current password',controller: currentpassword,obsecure: true,),
                          SizedBox(height:10),
                          custom_textfield(hinttitle: 'New password',controller: subject,obsecure: true,),

                          SizedBox(height: 15,),
                          custom_button(() async {
                            try {
                              if(subject.text.trim().isEmpty)return;
                              if(subject.text.trim().length<6){
                                EasyLoading.showToast('password should be 6 charaters!!');
                                return;
                              } if(currentpassword.text.trim().isEmpty){
                                EasyLoading.showToast('please enter current password!!');
                                return;
                              } if(subject.text.trim().isEmpty)return;
                              await Authentication.updatepassword(subject.text,currentpassword.text);
                              await get_profile();
                              if(mounted)
                                setState(() {

                                });
                              Navigator.pop(context);
                            }catch(e){
                              print(e);
                            }finally{
                              EasyLoading.dismiss();
                            }
                          }, 'Edit')
                        ],)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    );
                  },
                  transitionBuilder: (_, anim, __, child) {
                    Tween<Offset> tween;
                    if (anim.status == AnimationStatus.reverse) {
                      tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
                    } else {
                      tween = Tween(begin: Offset(1, 0), end: Offset.zero);
                    }

                    return SlideTransition(
                      position: tween.animate(anim),
                      child: FadeTransition(
                        opacity: anim,
                        child: child,
                      ),
                    );
                  },
                );
              }, "Change Password"),
              SizedBox(height: hght/10,),
              GestureDetector(
                onTap:() async {
                  AuthController.instance.logOut();
                },
                child: Container(
                  width:wdth/ 1.1,
                  height: hght/16,
                  decoration: BoxDecoration(
                    //color:Colors.lightGreen,
                    borderRadius:BorderRadius.circular(5),
                     border: Border.all(color: Colors.redAccent,width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout,color: Colors.redAccent,),
                      Text("Log Out",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700,fontSize: 16),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
   Imagepickerchoicedialog() {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor:BLACK_COLOR.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            child: Row(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                        onTap: () async {
                          await Permission.photos.request();
                          var photo;

                            photo = await _picker.pickImage(
                                source: ImageSource.gallery);
                          if (photo != null) {
                            setState((){});
                            imagefile = File(photo.path);
                          }
                          await set_profile(imagefile, USER_PROFILE['image']??"", USER_PROFILE['name']??"", USER_PROFILE['age']??"", USER_PROFILE['phone']??"", USER_PROFILE['gender']??"");
                          await get_profile();
                          if(mounted)
                            setState(() {

                            });
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "images/gallery.png",fit: BoxFit.fill,
                        ))),
                Container(
                    width: 60,
                    height: 55,
                    child: GestureDetector(
                        onTap: () async {
                          await Permission.camera.request();
                          var photo;

                            photo = await _picker.pickImage(
                                source: ImageSource.camera);

                          if (photo != null) {
                            imagefile = File(photo.path);
                          }
                          await set_profile(imagefile, USER_PROFILE['image']??"", USER_PROFILE['name']??"", USER_PROFILE['age']??"", USER_PROFILE['phone']??"", USER_PROFILE['gender']??"");
await get_profile();
if(mounted)
  setState(() {

  });
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "images/camera.png",fit: BoxFit.fill,
                        ))),
              ],
            ),
            decoration: BoxDecoration(
              color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
          Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }



}
