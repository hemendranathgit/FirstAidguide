import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/welcome_page.dart';

class EmgCall extends StatefulWidget {
  const EmgCall({Key? key}) : super(key: key);

  @override
  _EmgCall createState() => _EmgCall();
}

class _EmgCall extends State<EmgCall> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35,),
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                color: Colors.red,
                size: 30,
              ),
              onTap: () async{
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>WelcomePage()));
              },
            ),
            Container(
              width: w*0.79,
              height: h*0.07,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("img/loginbutton.png"
                  ),
                      fit: BoxFit.cover
                  )
              ),
              child:Center(
                child: Text(
                  "Emergency Contact",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 105,),
            Padding(padding: EdgeInsets.all(25),
            child: Container(
              height: 99,
              child: Center(
                child: Container(
                  height: 99,
                  child: ListTile(
                    leading: Image.asset('img/ambu.png',width: 90,
                        height: 50,
                        fit:BoxFit.fill ),
                    title: Text("112", textAlign: TextAlign.center,),
                    trailing: Text(" ",textAlign: TextAlign.justify,),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(25),
              child: Center(
                child: Container(
                  height: 99.0,
                  child: ListTile(
                    leading: Image.asset('img/img.png',width: 90,
                        height: 50,
                        fit:BoxFit.fill ),
                    title: Text("114 14", textAlign: TextAlign.center,),
                    trailing: Text(" ",textAlign: TextAlign.justify,),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.redAccent, width: 2,),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(25),
              child: Center(
                child: Container(
                  height: 99,
                  child: Container(
                    height: 55,
                    child: ListTile(
                      leading: Image.asset('img/img_1.png',width: 90,
                          height: 90,
                          fit:BoxFit.fill ),
                      title: Text("113 13", textAlign: TextAlign.center,),
                      trailing: Text(" ",textAlign: TextAlign.justify,),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.redAccent, width: 2,),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
