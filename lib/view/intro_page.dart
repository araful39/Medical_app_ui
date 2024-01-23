import 'package:flutter/material.dart';
import 'package:medical_app_ui/utills/round_button.dart';
import 'package:medical_app_ui/view/home_page.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    double hieght=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: hieght*0.6,
              width: width*1,
              decoration: BoxDecoration(
                color: Colors.indigo.shade300
              ),
                child: Image.asset("asset/icons/intro.png",height: 300,)),
            SizedBox(
              height:hieght*0.05,
            ),
            Text("All specialists in one app",style: TextStyle(fontSize: 40),),
            SizedBox(height:hieght*0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Find your doctor and make an appointment with one tap",style: TextStyle(fontSize: 25),),
            ),
            Spacer(),
            RoundButton(name: "Get Started", onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },hieght: hieght*0.08,width: width*0.7,),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
