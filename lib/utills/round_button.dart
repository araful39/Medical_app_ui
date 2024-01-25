import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
   RoundButton({super.key, required this.name,  this.color=Colors.indigo,  this.hieght=60,  this.width=200, required this.onpress});
  final String name;
  final Color color;
  final double hieght;
  final double width;
  final VoidCallback onpress;



  @override
  Widget build(BuildContext context) {
    return     InkWell(onTap: onpress,
      child: Container(
        width: width,
        height: hieght,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)
        ),child: Center(
        child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
      ),);
  }
}
