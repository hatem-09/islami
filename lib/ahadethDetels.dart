import 'package:flutter/material.dart';
import 'package:islami/AppColor/appcolor.dart';
import 'package:islami/provider/myprovider.dart';

import 'package:provider/provider.dart';

import 'ahadethmodel.dart';

class ahadethdetels extends StatelessWidget {
  static const String routName = "ahadethdetels";

  const ahadethdetels({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<myprovider>(context);
    var model = ModalRoute
        .of(context)
        ?.settings
        .arguments as ahadethmodel;
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(pro.mode==ThemeMode.light
        ?"assets/images/bg3.png"
        :"assets/images/dark.png",))),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    title: Text(model.titel,style: TextStyle(color:AppColors.black),),
    ),
    body: Padding(
    padding: const EdgeInsets.all(18.0),
    child: Card(
    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
    color: AppColors.white,
    elevation: 0,
    child: ListView.builder(
    itemBuilder: (context, index) {
    return Text(
    model.content[index],
    textDirection: TextDirection.rtl,
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
    );
    },itemCount: model.content.length,
    ),
    )
    ,
    )
    ,
    )
    );
  }
}
