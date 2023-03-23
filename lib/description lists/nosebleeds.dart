import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class Nosebleeds extends StatefulWidget {
  const Nosebleeds({Key? key}) : super(key: key);

  @override
  _Nosebleeds createState() => _Nosebleeds();
}

class _Nosebleeds extends State<Nosebleeds> {
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
                  "Sprains",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Keep the limb as still as possible.\n2.Apply a cold pack. \n3.Elevate the injured part if you can do so safely. \n4.Use NSAIDs for pain. \n5.Ask your provider about any other treatment for a sprain you might need. ",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1. अंग को यथासंभव स्थिर रखें।\n2. कोल्ड पैक लगाएं।\n3. यदि आप इसे सुरक्षित रूप से कर सकते हैं तो घायल हिस्से को ऊपर उठाएं। \n4. दर्द के लिए एनएसएआईडी का प्रयोग करें। \n5. अपने प्रदाता से मोच के लिए किसी अन्य उपचार के बारे में पूछें, जिसकी आपको आवश्यकता हो सकती है।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Håll lemmen så stilla som möjligt. \n2.Applicera en kall förpackning. \n3.Höj den skadade delen om du kan göra det på ett säkert sätt. \n4.Använd NSAID mot smärta. \n5.Fråga din vårdgivare om någon annan behandling för en stukning du kan behöva. \n",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    );
  }
}
