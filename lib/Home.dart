import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/AppColor/appcolor.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:islami/tabs/ahadeth.dart';
import 'package:islami/tabs/quran.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/setting.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "Home";

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
   var pro=Provider.of<myprovider>(context);
    return Stack(
      children: [
        Image.asset(pro.mode==ThemeMode.light
            ?"assets/images/bg3.png"
            :"assets/images/dark.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Center(
                child: Text(
                  'appBarTitle'.tr(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: AppColors.black),
                ),
              ),
            ),
            bottomNavigationBar:
                BottomNavigationBar(
                    onTap:(value) {
                      selectedindex=value;
                      setState(() {});
                    },
                    currentIndex: selectedindex,

                    items:const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/moshaf.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ]),
            body: tabs[selectedindex])
      ],
    );
  }
  List<Widget>tabs=[
    quran(),
    ahadeth(),
    sebha(),
    radio(),
    setting()
  ];
}
