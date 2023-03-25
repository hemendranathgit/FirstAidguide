import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sample/auth_controller.dart';
import 'package:sample/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 55,),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome To First Aid Guide",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color:Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type your name here",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Age",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color:Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type your age here",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color:Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type your gender here",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color:Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type your phone number here",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Mail Id",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color:Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Type mail ID here",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color:Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Type Your Password",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:Colors.white,
                                  width: 1.0
                              )
                          ),
                          border: OutlineInputBorder(
                          )
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 28.6,),
            GestureDetector(
              onTap: (){
                AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
              },
              child: Container(
                width: w*0.9,
                height: h*0.07,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("img/loginbutton.png"
                    ),
                        fit: BoxFit.cover
                    )
                ),
                child:Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ) ,
              ),
            ),
            SizedBox(height: 10.9,),
            RichText(text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>LoginPage()),
                text: "Have an account?",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red[500]
                )
            )),

          ],
        )
    );
  }
}
