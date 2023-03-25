import 'package:flutter/material.dart';
class passwordtextfield extends StatefulWidget {


  final hinttitle;
  //final textfieldicon;
  @override
  State<passwordtextfield> createState() => _passwordtextfieldState();

  passwordtextfield(this.hinttitle,);
}
var wdth;
var hght;
class _passwordtextfieldState extends State<passwordtextfield> {
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
        // color:Color(0xffD9D9D9),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,

              hintText:"  "+widget.hinttitle,
             // suffixIcon: widget.textfieldicon,
              // hintStyle: TextStyle(
              //   color: Colors.black45,
              //   fontSize: 12,
              //
              // )
            ),
          ),
        ),
      ),

    );
  }
}
