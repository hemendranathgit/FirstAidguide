import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/welcome_page.dart';

class Firstaidkit extends StatefulWidget {
  const Firstaidkit({Key? key}) : super(key: key);

  @override
  _Firstaidkit createState() => _Firstaidkit();
}

class _Firstaidkit extends State<Firstaidkit> {
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
                  "First Aid Kit",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("Your basic first aid kit \nA basic first aid kit may contain: \n1.plasters in a variety of different sizes and shapes \n2.small, medium and large sterile gauze dressings\n3.at least two sterile eye dressings \n4.triangular bandages \n5.crêpe rolled bandages \n6.safety pins \n7.disposable sterile gloves \n8.tweezers \n9.scissors \n10.alcohol-free cleansing wipes \n11.sticky tape \n12.thermometer (preferably) \n13.skin rash cream, such as hydrocortisone or calendula \n14.cream or spray to relieve insect bites and stings 15.antiseptic cream",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("आपकी बुनियादी प्राथमिक चिकित्सा किट एक बुनियादी प्राथमिक चिकित्सा किट में शामिल हो सकते हैं: \n1. विभिन्न आकारों और आकारों में प्लास्टर। \n2. छोटे, मध्यम और बड़े बाँझ धुंध ड्रेसिंग। \n3. कम से कम दो विसंक्रमित नेत्र पट्टियां। \n4. त्रिकोणीय पट्टियाँ। \n5. क्रेप रोल्ड बैंडेज। \n6. सुरक्षा पिन। \n7. डिस्पोजेबल बाँझ दस्ताने। \n8. चिमटी। \n9.कैंची। \n10. शराब मुक्त सफाई पोंछे। \n11. चिपचिपा टेप। \n12.थर्मामीटर (अधिमानतः)। \n13. स्किन रैश क्रीम, जैसे कि हाइड्रोकार्टिसोन या कैलेंडुला। \n14. कीड़े के काटने और डंक से राहत पाने के लिए क्रीम या स्प्रे। \n15. एंटीसेप्टिक क्रीम।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("Din grundläggande första hjälpen-låda En grundläggande första hjälpen-kit kan innehålla: \n1.plåster i en mängd olika storlekar och former. \n2. små, medelstora och stora sterila kompresser. \n3.minst två sterila ögonförband. \n4.triangulära bandage. \n5.crêpe rullade bandage. \n6.säkerhetsnålar. \n7. sterila engångshandskar. \n8.pincett. \n9.sax. \n10.alkoholfria rengöringsservetter. \n11.tejp. \n12.termometer (helst). \n13. hudutslag kräm, såsom hydrokortison eller ringblomma. \n14.kräm eller spraya för att lindra insektsbett och stick. \n15.antiseptisk kräm.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
