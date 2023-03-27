import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class Frostbite extends StatefulWidget {
  const Frostbite({Key? key}) : super(key: key);

  @override
  _Frostbite createState() => _Frostbite();
}

class _Frostbite extends State<Frostbite> {
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
                  "Frostbite",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Get out of the cold. \n2.Put the affected area in warm water (98 to 105 degrees) for 20 to 30 minutes. \n3.Do not rub the affected area. \n4.Do not use sources of dry heat (e.g., heating pads, fireplace) \n5.For fingers and toes, you can put clean cotton balls between them after they have warmed up. \n6.Loosely wrap the area with bandages. \n7.Use Tylenol (acetaminophen) or Advil (ibuprofen) for pain. \n8.Get medical attention as soon as possible.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.ठंड से बाहर निकलें। \n2.प्रभावित हिस्से को 20 से 30 मिनट के लिए गर्म पानी (98 से 105 डिग्री) में रखें। \n3.प्रभावित क्षेत्र को रगड़ें नहीं। \n4.सूखी गर्मी के स्रोतों का उपयोग न करें (जैसे, हीटिंग पैड, फायरप्लेस) \n5.उंगलियों और पैर की उंगलियों के लिए, गर्म होने के बाद आप उनके बीच साफ रुई रख सकते हैं। \n6.क्षेत्र को पट्टियों से ढीला लपेटें। \n7.दर्द के लिए टाइलेनॉल (एसिटामिनोफेन) या एडविल (इबुप्रोफेन) का प्रयोग करें। \n8.ितनी जल्दी हो सके चिकित्सा ध्यान दें।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Kom ur kylan. \n2.Lägg det drabbade området i varmt vatten (98 till 105 grader) i 20 till 30 minuter. \n3.Gnugga inte det drabbade området. \n4.Använd inte källor för torr värme (t.ex. värmekuddar, öppen spis) \n5.För fingrar och tår kan du lägga rena bomullstussar mellan dem efter att de har värmts upp. \n6.Linda området löst med bandage. \n7.Använd Tylenol (acetaminophen) eller Advil (ibuprofen) mot smärta. \n8.Få läkarvård så snart som möjligt.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
