import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/AppColor/appcolor.dart';
import 'package:islami/souramodel.dart';


class souradetels extends StatefulWidget {
  const souradetels({super.key});

  static const String routName = "souradetels";

  @override
  State<souradetels> createState() => _souradetelsState();
}

class _souradetelsState extends State<souradetels> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as Souramodel;
    if(verses.isEmpty){
      LoudSourafile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg3.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            model.name,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800,color: AppColors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  verses[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      wordSpacing: 3,
                      fontWeight: FontWeight.w800,
                      color: AppColors.black),
                );
              },itemCount: verses.length,
            ),
          ),
        ),
      ),
    );
  }
  LoudSourafile(int index)async{
    String soura=await rootBundle.loadString("assets/failes/${index+1}.txt");
    List<String>souralines =soura.split("\n");
    verses=souralines;
    print(souralines);
    setState(() {

    });
  }
}
