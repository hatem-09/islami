import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/myprovider.dart';

import 'package:provider/provider.dart';

class themeing extends StatelessWidget {
  const themeing({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<myprovider>(context);
    return Column(
      children: [
           Container(
             padding: EdgeInsets.all(12),
             child: InkWell(
               onTap: (){
             pro.changeTheme(ThemeMode.light);
               },
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 Text("light".tr(),style: TextStyle(fontSize: 22,color: Colors.grey),),Icon(Icons.done,color: Colors.grey,),
               ],),
             ),
           ),    Container(
        padding: EdgeInsets.all(12),
             child: InkWell(
               onTap: (){
               pro.changeTheme(ThemeMode.dark);
               },
               child: Row(children: [
                       Text("dark".tr(),style: TextStyle(fontSize: 22),),
                     ],),
             ),
           ),
    ],);
  }
}
