import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sample/Components/custom_button.dart';
import 'package:sample/Components/custom_textfield.dart';

import '../Components/Authentication.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
var wdth;
var hght;
class _ForgotPasswordState extends State<ForgotPassword> {
  var email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    wdth=MediaQuery.of(context).size.width;
    hght=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: wdth/1.2,
            height: hght/2,
            child: Column(
              children: [
                Image.asset("img/plus.png",width: wdth/3,height: hght/5,),
             Text("Forgot Password?",style: TextStyle(color: Colors.redAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                Container(
                  width: wdth/1.1,
                  child: Column(
                    children: [
                    Text("Enter your mail ID for which you"
                        " want to reset the password for",style: TextStyle(fontSize: 16),textAlign:TextAlign.center,),

                    ],
                  ),
                ),
                SizedBox(height: hght/60,),
                custom_textfield(hinttitle: "Type the mail ID here",controller: email,type: TextInputType.emailAddress,),
                SizedBox(height: hght/40,),
                custom_button(() async {
                  try{
                    EasyLoading.show();
                    if(email.text.isEmpty){
                      EasyLoading.showToast('Email could not be empty!!');
                      return;
                    }
                    if(!email.text.isEmail){
                      EasyLoading.showToast('Please enter valid email!!');
                      return;
                    }
                   await Authentication.resetPassword(email: email.text);
                    // if(status==1)
                    //   EasyLoading.showToast('successfully reset !!');
                    //     else
                    //   EasyLoading.showToast('Failed !!');
                  }catch(e){}finally{
EasyLoading.dismiss();
                  }

                }, "Get Link"),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
