import 'package:flutter/material.dart';

import '../constants.dart';
class custom_button extends StatefulWidget {
  //const custom_button({Key? key}) : super(key: key);
  final onpress;
  final buttontext;

  custom_button(this.onpress, this.buttontext,);


  @override
  State<custom_button> createState() => _custom_buttonState();
}
var wdth;
var hght;
class _custom_buttonState extends State<custom_button> {
  @override
  Widget build(BuildContext context) {
    wdth=MediaQuery.of(context).size.width;
    hght=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap:widget.onpress,
      child: Container(
        width:wdth/ 1.1,
        height: hght/16,
        decoration: BoxDecoration(
          color:Colors.red,
          borderRadius:BorderRadius.circular(5),
        //  border: Border.all(color: Colors.black,width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.buttontext,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
