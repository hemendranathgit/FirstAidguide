import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../welcome_page.dart';

class Chowking extends StatefulWidget {
  const Chowking({Key? key}) : super(key: key);

  @override
  _Chowking createState() => _Chowking();
}

class _Chowking extends State<Chowking> {
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
                  "Chowking",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ) ,
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Stand behind the person and lean them slightly forward. \n2.Put your arms around their waist. \n3.Clench your fist and place it between their belly button (navel) and rib cage. \n4.Grab your fist with your other hand. \n5.Pull your clenched fist sharply backward and upward under the person’s rib cage in 5 quick thrusts. \n6.Repeat until the object is coughed up.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.व्यक्ति के पीछे खड़े हो जाएं और उन्हें थोड़ा आगे की ओर झुकाएं। \n2.अपनी बाहों को उनकी कमर के चारों ओर रखें। \n3.अपनी मुट्ठी बंद करें और इसे उनकी नाभि (नाभि) और पसली के पिंजरे के बीच रखें। \n4.अपनी मुट्ठी को अपने दूसरे हाथ से पकड़ें। \n5.अपनी बंद मुट्ठी को तेजी से पीछे की ओर और ऊपर की ओर व्यक्ति की पसली के पिंजरे के नीचे 5 तेज झटके में खींचें। \n6.तब तक दोहराएं जब तक कि वस्तु खांसी न हो जाए।",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 35,),
            ListTile(
              subtitle: Text("1.Ställ dig bakom personen och luta honom något framåt. \n2.Lägg armarna runt deras midja. \n3.Knyt näven och placera den mellan naveln och bröstkorgen. \n4.Ta tag i näven med din andra hand. \n5.Dra din knutna näve kraftigt bakåt och uppåt under personens bröstkorg i 5 snabba stötar. \n6.Upprepa tills föremålet är upphostat.",style: TextStyle(fontSize: 25,decorationColor: Colors.black),overflow: TextOverflow.visible,textAlign: TextAlign.justify,),
            ),
          ],
        ),
      ),
    );
  }
}
