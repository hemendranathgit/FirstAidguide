import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sample/auth_controller.dart';
import 'package:sample/signup_page.dart';
import 'package:sample/signup_page.dart';
import 'package:sample/signup_page.dart';
import 'package:sample/signup_page.dart';
import 'package:sample/Components/ForgotPassword.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 65,),
          Container(
            width: w * 0.3,
            height: h * 0.2,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("img/logining.png"
                ),
                  fit: BoxFit.cover
                )
            ),
          ),
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
                SizedBox(height: 20,),
                Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 29,),
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
                      hintText: 'Email ID',
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
                SizedBox(height: 20,),
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
                      hintText: 'Password',
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
                SizedBox(height: 15.7,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red[500]
                    ),
                  ),
                )

              ],
            ),
          ),
          SizedBox(height: 10.6,),
          GestureDetector(
            onTap: (){
              AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
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
                  "Log in",
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
            text: " ",
            style: TextStyle(
              color: Colors.lime[500],
              fontSize: 20
            ),
            children: [
              TextSpan(
              text: "New User?",
              style: TextStyle(
                  color: Colors.lime[500],
                  fontSize: 20,
              ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
              )
            ]
          )),
          SizedBox(height: 10.9,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
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
                  "SignUp",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),


                ),


              ) ,

            ),
          ),//signup button
          SizedBox(height: 17.25,),
          GestureDetector(
            onTap: () async{
              AuthController().signInWithGoogle();
            },
            child: Container(
            width: w*0.9,
            height: h*0.09,
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("img/gbutton_Si.png"
              ),
            fit: BoxFit.cover
            ))),
          )
        ],
      ),
    );
  }
}
