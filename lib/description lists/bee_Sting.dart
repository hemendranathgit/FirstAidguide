import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class BeeSting extends StatefulWidget {
  const BeeSting({Key? key}) : super(key: key);

  @override
  _BeeSting createState() => _BeeSting();
}

class _BeeSting extends State<BeeSting> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return WillPopScope( onWillPop: () async{
      return false;
    },
      child: Scaffold(
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
                  "Bee Sting",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Get the stinger out immediately. This needs to happen to keep it from injecting more venom into the person. The method you use does not matter—what’s most important is that this is done quickly. \n2.Wash the area with soap and water. \n3.Use a cold pack to help with the swelling at the site; however, do not apply ice directly to the skin. \n4.Use an allergy medication or antihistamine (like Benadryl) to reduce swelling and itching. \n5.Use Tylenol (acetaminophen) or Advil (ibuprofen) for pain.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.दंश को तुरंत बाहर निकालें।  इसे व्यक्ति में अधिक जहर इंजेक्ट करने से रोकने के लिए ऐसा करने की आवश्यकता है।  आपके द्वारा उपयोग की जाने वाली विधि कोई मायने नहीं रखती है—सबसे महत्वपूर्ण यह है कि यह जल्दी से किया जाता है। \n2. जगह को साबुन और पानी से धोएं। \n3.साइट पर निगलने में मदद करने के लिए एक ठंडा पैक लें; हालांकि, बर्फ को सीधे त्वचा पर न लगाएं। \n4.हमारी एलर्जी की दवा या एंटीहिस्टामाइन (जैसे बेनाड्रिल) के साथ निगलने और खुजली को कम करें। \n5.दर्द के लिए टाइलेनॉल (एस्ट्रामिनोफेन) या एडविल (इबुप्रोफेन)।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Ta ut stingern omedelbart.  Detta måste hända för att det inte ska injicera mer gift i personen.  Metoden du använder spelar ingen roll – det viktigaste är att detta görs snabbt. \n2.Tvätta området med tvål och vatten. \n3.Använd en kall packning för att hjälpa till med att svälja till platsen; Applicera dock inte is direkt på huden. \n4.Minska sväljning och klåda med vår allergimedicin eller ett antihistamin (som Benadryl). \n5.Använd Tylenol (Astraminophen) eller Advil (Ibuprofen) mot smärta.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
