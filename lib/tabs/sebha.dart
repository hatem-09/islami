import 'package:flutter/material.dart';
import 'package:islami/AppColor/appcolor.dart';


class sebha extends StatefulWidget {
  const sebha({super.key});

  @override
  State<sebha> createState() => _moshafState();
}

class _moshafState extends State<sebha> {
  int counter=0;
  int textIndex=0;
  List<String>tasbeeh=[
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  void incrementCounter(){
    setState(() {
      counter++;
      if(counter==33){
        counter=0;
        textIndex=(textIndex+1)%tasbeeh.length;
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
                child: Image.asset(
              "assets/images/head.png",
              height: 60,
            )),
            Center(
                child: Image.asset(
              "assets/images/sebhaa.png",
              height: 295,
              width: 295,
            )),
          ],
        ),
        Column(children: [
        Text(
          "عدد التسبحات",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),   SizedBox(height: 20,),
        Text(
          '$counter',
          style: TextStyle(
              fontSize: 30,color: AppColors.black
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            onPressed:    incrementCounter,
            child: Text(tasbeeh[textIndex],
              style: TextStyle(
                  fontSize: 30,color: AppColors.white
              ),
    )      )])
      ],
    );
  }
}
