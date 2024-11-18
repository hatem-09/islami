import 'package:flutter/material.dart';
import 'package:islami/AppColor/appcolor.dart';


class radio extends StatelessWidget {
  const radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

          children: [
            Image.asset(
              "assets/images/radio1.png",
              height: 400,
              width: 700,
            ),
            Text(
              "اذاعة القراّن الكريم",
              style: TextStyle(fontSize: 30, color: AppColors.black),
            ),
            SizedBox(height: 35,),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset("assets/images/Group 5.png")]
              ),
            )]  ),
    );
  }
}
