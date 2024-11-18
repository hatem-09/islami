import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ahadethDetels.dart';
import 'package:islami/ahadethmodel.dart';


class ahadeth extends StatefulWidget {
  const ahadeth({super.key});

  @override
  State<ahadeth> createState() => _ahadethState();
}

class _ahadethState extends State<ahadeth> {
  List<ahadethmodel>AhAdeth=[];
  @override
  Widget build(BuildContext context) {
    if(AhAdeth.isEmpty){
      LoudelHadethfaile();
    }
    return Column(
      children: [
        Center(
            child: Image.asset(
          "assets/images/ahadeth.png",
        )),
        Divider(),
        Text(
          "ahadeth".tr(),
            style: Theme.of(context).textTheme.bodyMedium
        ),
    Divider(),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ahadethdetels.routName,arguments:
                    AhAdeth[index]
                    );
                  },
                  child: Text(
                    AhAdeth[index].titel,
                    textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount:AhAdeth.length),
        )
      ],
    );
  }
  LoudelHadethfaile(){
    rootBundle.loadString("assets/failes/ahadeth.txt").then((value) {
      List <String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadethone = ahadeth[i];
        List<String>hadethlines = hadethone.trim().split("\n");
        String titel = hadethlines[0];
        hadethlines.removeAt(0);
        List<String>content = hadethlines;
        ahadethmodel Ahadethmodel = ahadethmodel(titel, content);
        AhAdeth.add(Ahadethmodel);
        print(Ahadethmodel.titel);
        setState(() {

        });
      }
    });}}
