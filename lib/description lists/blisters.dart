import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class Blisters extends StatefulWidget {
  const Blisters({Key? key}) : super(key: key);

  @override
  _Blisters createState() => _Blisters();
}

class _Blisters extends State<Blisters> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return WillPopScope( onWillPop: () async{
      return false;
    },
    child :Scaffold(
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
                  "Blisters",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Wash your hands. \n2.Sterilize a needle with alcohol. \n3.Make small holes at the edge of the blister. \n4.Gently push out the fluid. \n5.Apply antibiotic ointment. \n6.Put on a bandage. \n7.If possible, take steps to protect the area from further rubbing or pressure.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1. अपने हाथ धो लो। \n2.शराब के साथ एक सुई कीटाणुरहित करें। \n3.छाले के किनारे पर छोटे-छोटे छेद करें। \n4.तरल पदार्थ को धीरे से बाहर निकालें। \n5.एंटीबायोटिक मरहम लगाएं। \n6.एक पट्टी पर रखो। \n7.यदि संभव हो, तो क्षेत्र को और रगड़ने या दबाव से बचाने के लिए कदम उठाएं।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Tvätta händerna. \n2.Sterilisera en nål med alkohol. \n3.Gör små hål i kanten av blistern. \n4.Tryck försiktigt ut vätskan. \n5.Applicera antibiotisk salva. \n6.Sätt på ett bandage. \n7.Om möjligt, vidta åtgärder för att skydda området från ytterligare skavning eller tryck.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
