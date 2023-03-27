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
                  "Nosebleeds",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Lean slightly forward, not back. \n2.Pinch your nose just below the bridge. It needs to be high enough that the nostrils are not pinched closed. \n3.After five minutes, check to see if the bleeding has stopped. If not, continue pinching and check after another 10 minutes. \n4.Apply a cold pack to the bridge of your nose while you’re pinching.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.थोड़ा आगे झुकें, पीछे नहीं। \n2.अपनी नाक को पुल के ठीक नीचे दबाएं।  यह इतना ऊंचा होना चाहिए कि नासिका छिद्र बंद न हों। \n3.पांच मिनट के बाद देखें कि खून बहना बंद हो गया है या नहीं।  यदि नहीं, तो पिंच करना जारी रखें और 10 मिनट के बाद चेक करें। \n4.जब आप चुटकी बजा रहे हों तो अपनी नाक के पुल पर एक ठंडा पैक लगाएं।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Luta dig något framåt, inte bakåt. \n2.Nyp näsan precis nedanför bron.  Den måste vara tillräckligt hög så att näsborrarna inte kläms ihop. \n3.Kontrollera efter fem minuter om blödningen har upphört.  Om inte, fortsätt att nypa och kontrollera efter ytterligare 10 minuter. \n4.Applicera en kall packning på näsryggen medan du nyper.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
