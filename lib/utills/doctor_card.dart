import 'package:flutter/material.dart';
class DoctorCard extends StatelessWidget {
 DoctorCard({super.key, required this.doctorImagePath, required this.doctorName, required this.doctorProfession});
 final String doctorImagePath;
 final String doctorName;
 final String doctorProfession;

  @override
  Widget build(BuildContext context) {
    double hieght=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: hieght * 2,
          width: width * 0.8,
          decoration: BoxDecoration(
              color: Colors.indigo.shade100,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ClipRRect(
          child: Image.asset(doctorImagePath,height: 100,),
            borderRadius:BorderRadius.circular(50)

            ),
              SizedBox(
                height: hieght * 0.03,
              ),
              Text(doctorName,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: hieght * 0.01,
              ),
              Text(doctorProfession)
            ],
          ),
        ),
      ),
    );
  }
}
