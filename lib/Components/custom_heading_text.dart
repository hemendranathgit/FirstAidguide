import 'package:flutter/material.dart';

import '../constants.dart';
class custom_heading_text extends StatefulWidget {
 // const custom_heading_text({Key? key}) : super(key: key);
  final headingtext;

  custom_heading_text(this.headingtext);

  @override
  State<custom_heading_text> createState() => _custom_heading_textState();
}
class _custom_heading_textState extends State<custom_heading_text> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.headingtext,style: TextStyle(color: (THEME_MODE=='0')?WHITE_COLOR:BLACK_COLOR,fontSize: 30,fontWeight: FontWeight.bold),);
  }
}
