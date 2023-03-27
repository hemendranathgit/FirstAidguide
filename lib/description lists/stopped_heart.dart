import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class StoppedHeart extends StatefulWidget {
  const StoppedHeart({Key? key}) : super(key: key);

  @override
  _StoppedHeart createState() => _StoppedHeart();
}

class _StoppedHeart extends State<StoppedHeart> {
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
                  "Stopped Heart",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Start doing chest compressions on the person who needs help. Using both your hands, push down hard and fast in the center of the person’s chest. Let their chest come back up naturally between compressions. Keep going until someone with more training arrives. \n2.If you’re trained in CPR, you can use chest compressions and rescue breathing. \n3.If it’s available, use an AED. However, do not put off doing chest compressions to go look for an AED. If possible, instruct someone else to go find the device and bring it to you.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1. जिस व्यक्ति को मदद की जरूरत है, उसकी छाती को दबाना शुरू करें।  अपने दोनों हाथों का उपयोग करते हुए, व्यक्ति की छाती के बीच में जोर से और तेजी से धक्का दें।  दबावों के बीच उनकी छाती को स्वाभाविक रूप से ऊपर आने दें।  तब तक चलते रहें जब तक कोई अधिक प्रशिक्षण वाला व्यक्ति न आ जाए। \n2.यदि आप सीपीआर में प्रशिक्षित हैं, तो आप छाती को दबा सकते हैं और श्वास को बचा सकते हैं। \n3.यदि यह उपलब्ध है, तो AED का उपयोग करें।  हालांकि, एईडी की तलाश के लिए छाती को दबाना बंद न करें।  अगर संभव हो, तो किसी और को निर्देश दें कि वह जाकर डिवाइस को ढूंढे और उसे आपके पास लाए।.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("11.Börja göra bröstkompressioner på den som behöver hjälp.  Använd båda händerna och tryck ner hårt och snabbt i mitten av personens bröst.  Låt deras bröst komma upp naturligt mellan kompressionerna.  Fortsätt tills någon med mer träning kommer. \n2.Om du är utbildad i HLR kan du använda bröstkompressioner och räddningsandning. \n3.Om det är tillgängligt, använd en AED.  Men skjut inte upp att göra bröstkompressioner för att leta efter en AED.  Om möjligt, instruera någon annan att leta upp enheten och ta med den till dig.\n",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
