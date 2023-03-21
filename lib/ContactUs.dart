import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:sample/Components/custom_button.dart';
import 'package:sample/Components/custom_textfield.dart';

import '../constants.dart';
class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}
var wedalpu;
var podugu;
class _ContactUsState extends State<ContactUs> {
  var bodycontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    wedalpu=MediaQuery.of(context).size.width;
    podugu=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: (THEME_MODE=='0')?BLACK_COLOR:WHITE_COLOR ,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: wedalpu/1.2,
            height: podugu/3.7,
            child: Column(
              children: [
                Container(
                    width: wedalpu*7.7,
                    height: podugu*0.06,
                    color: Colors.red,
                  child: Column(
                    children: [
                      SizedBox(height: 7,),
                      Text("If there any suggestions feel free to \n "
                          "contact us!",style: TextStyle(fontSize: 16,color: (THEME_MODE=='0')?BLACK_COLOR:WHITE_COLOR),textAlign:TextAlign.center),
                    ],
                  ),
                ),
                SizedBox(height: podugu/60,),
                custom_textfield(hinttitle: "Add text",controller: bodycontroller,),
                SizedBox(height: podugu/40,),
                custom_button(() async {
                 var email= Email(
                    body: bodycontroller.text,
                    recipients: ['hemendranath0573@gmail.com'],
                    isHTML: false,
                  );
                   await FlutterEmailSender.send(email);
                   EasyLoading.showToast('successfully!!');
                }, "Send Massage"),
                Text("Thank you for reaching out!")

              ],
            ),
          ),
        ),
      ),
    );
  }
}