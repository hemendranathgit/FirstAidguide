import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class Burns extends StatefulWidget {
  const Burns({Key? key}) : super(key: key);

  @override
  _Burns createState() => _Burns();
}

class _Burns extends State<Burns> {
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
                  "Bruns",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Flush the burned area with cool running water for several minutes. Do not use ice. \n2.Apply a light gauze bandage. If the burn is minor, you can put on an ointment, like aloe vera, before you cover it. \n3.Take Motrin (ibuprofen) or Tylenol (acetaminophen) for pain relief if you need it. \n4.Do not break any blisters that form.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.जले हुए स्थान को ठंडे बहते पानी से कई मिनट तक धोएं।  बर्फ का प्रयोग न करें। \n2.हल्की गौज पट्टी लगाएं।  यदि जला मामूली है, तो आप इसे कवर करने से पहले एलोवेरा की तरह एक मरहम लगा सकते हैं। \n3.जरूरत पड़ने पर दर्द से राहत के लिए मोट्रिन (इबुप्रोफेन) या टाइलेनॉल (एसिटामिनोफेन) लें। \n4.बनने वाले किसी भी फफोले को तोड़ें नहीं।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Spola det brända området med kallt rinnande vatten i flera minuter.  Använd inte is. \n2.Applicera ett lätt gasbinda.  Om brännskadan är mindre kan du lägga på en salva, som aloe vera, innan du täcker den. \n3.Ta Motrin (ibuprofen) eller Tylenol (acetaminophen) för smärtlindring om du behöver det. \n4.Bryt inte några blåsor som bildas.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
