import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class Broken extends StatefulWidget {
  const Broken({Key? key}) : super(key: key);

  @override
  _Broken createState() => _Broken();
}

class _Broken extends State<Broken> {
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
                  "Broken Bone/Fracture",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Do not try to straighten the bone. \n2.For a limb, use a splint and padding to keep it still, then elevate it. \n3.Put a cold pack on the injury—but not directly on the skin. Use a barrier between the ice and the skin to keep the tissue from being damaged. If all you have is ice, put it in a plastic bag and wrap it in a shirt or towel before applying it. \n4.Give the person anti-inflammatory drugs like Advil (ibuprofen) or Aleve (naproxen) for pain.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.हड्डी को सीधा करने की कोशिश न करें। \n2.अंग के लिए, इसे स्थिर रखने के लिए स्प्लिंट और पैडिंग का उपयोग करें, फिर इसे ऊपर उठाएं। \n3.चोट पर एक ठंडा पैक लगाएं - लेकिन सीधे त्वचा पर नहीं।  ऊतक को क्षतिग्रस्त होने से बचाने के लिए बर्फ और त्वचा के बीच एक अवरोध का उपयोग करें।  यदि आपके पास केवल बर्फ है, तो उसे प्लास्टिक की थैली में डालें और इसे लगाने से पहले शर्ट या तौलिया में लपेटें। \n4.दर्द के लिए व्यक्ति को एडविल (इबुप्रोफेन) या एलेव (नेप्रोक्सेन) जैसी सूजन-रोधी दवाएं दें।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Försök inte räta ut benet. \n2.För en lem, använd en skena och vaddering för att hålla den stilla, höj den sedan. \n3.Sätt en kall packning på skadan—men inte direkt på huden.  Använd en barriär mellan isen och huden för att förhindra att vävnaden skadas.  Om allt du har är is, lägg den i en plastpåse och slå in den i en skjorta eller handduk innan du applicerar den. \n4.Ge personen antiinflammatoriska läkemedel som Advil (ibuprofen) eller Aleve (naproxen) mot smärta.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    );
  }
}
