import 'package:flutter/material.dart';

import '../constants.dart';
class custom_textfield extends StatefulWidget {


  final hinttitle;
  final controller;
  final obsecure;
  final enable;
  final type;
  //final textfieldicon;
  @override
  State<custom_textfield> createState() => _custom_textfieldState();

  custom_textfield({this.type,this.enable,this.obsecure,this.hinttitle,this.controller});
}
var wdth;
var hght;
class _custom_textfieldState extends State<custom_textfield> {
  @override
  Widget build(BuildContext context) {
    wdth=MediaQuery.of(context).size.width;
    hght=MediaQuery.of(context).size.height;
    return  Container(
      width:wdth/1.1,
      height:hght/16,
      // width:widget.width,
      // height: widget.heidht,
      decoration:BoxDecoration(
        border: Border.all(color: Colors.grey,width:0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: TextField(
            keyboardType: widget.type??TextInputType.text,
            enabled: widget.enable??true,
            obscureText: widget.obsecure??false,
            controller: widget.controller??TextEditingController(),
            style: TextStyle(color:(THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR),
            decoration: InputDecoration(
              border: InputBorder.none,
               hintText:"  ${widget.hinttitle??""}",
             // suffixIcon: widget.textfieldicon,
              hintStyle: TextStyle(
                color:  (THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR,


              )
            ),
          ),
        ),
      ),

    );
  }
}
