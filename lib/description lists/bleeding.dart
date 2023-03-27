import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class Bleeding extends StatefulWidget {
  const Bleeding({Key? key}) : super(key: key);

  @override
  _Bleeding createState() => _Bleeding();
}

class _Bleeding extends State<Bleeding> {
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
                  "Bleeding",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Wash your hands or put on disposable gloves if you have them. This will protect you from infectious diseases like viral hepatitis and HIV/AIDS that can be spread in a person’s blood. \n2.Rinse the wound with water. \n3.Cover the wound with a gauze or cloth (e.g., towel, blanket, clothing). \n4.Apply direct pressure to stop the flow of blood and encourage clotting (when blood naturally thickens to stop blood loss). \n5.Elevate the bleeding body part above the person’s head if you can. \n6.Do not remove the cloth if it becomes soaked. Removing the first layer will interfere with the clotting process and result in more blood loss. Instead, add more layers if needed. \n7.Once bleeding has stopped, put a clean bandage on the wound.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.अपने हाथ धोएं या डिस्पोजेबल दस्ताने पहनें यदि आपके पास हैं।  यह आपको वायरल हेपेटाइटिस और एचआईवी/एड्स जैसे संक्रामक रोगों से बचाएगा जो किसी व्यक्ति के रक्त में फैल सकते हैं। \n2.घाव को पानी से धोएं। \n3.घाव को धुंध या कपड़े से ढकें (जैसे, तौलिया, कंबल, कपड़े)। \n4.रक्त के प्रवाह को रोकने और थक्के को प्रोत्साहित करने के लिए सीधे दबाव डालें (जब रक्त स्वाभाविक रूप से खून की कमी को रोकने के लिए गाढ़ा हो जाता है)। \n5.यदि आप कर सकते हैं तो शरीर के खून बहने वाले हिस्से को व्यक्ति के सिर के ऊपर उठाएं। \n6.अगर कपड़ा भीग जाए तो उसे न हटाएं।  पहली परत को हटाने से थक्का बनने की प्रक्रिया में बाधा उत्पन्न होगी और इसके परिणामस्वरूप अधिक रक्त हानि होगी।  इसके बजाय, यदि आवश्यक हो तो और परतें जोड़ें। \n7.जब खून बहना बंद हो जाए तो घाव पर साफ पट्टी बांध दें।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Tvätta händerna eller ta på dig engångshandskar om du har.  Detta kommer att skydda dig från infektionssjukdomar som viral hepatit och HIV/AIDS som kan spridas i en persons blod. \n2.Skölj såret med vatten. \n3.Täck såret med en gasväv eller trasa (t.ex. handduk, filt, kläder). \n4.Applicera direkt tryck för att stoppa blodflödet och uppmuntra koagulering (när blod naturligt tjocknar för att stoppa blodförlust). \n5.Höj den blödande kroppsdelen ovanför personens huvud om du kan. \n6.Ta inte bort trasan om den blir genomblöt.  Att ta bort det första lagret kommer att störa koaguleringsprocessen och resultera i mer blodförlust.  Lägg istället till fler lager om det behövs. \n7.När blödningen har upphört, sätt ett rent bandage på såret.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
