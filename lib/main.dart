import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home.dart';
import 'package:islami/ahadethDetels.dart';
import 'package:islami/provider/myprovider.dart';
import 'package:islami/souradetels.dart';

import 'package:provider/provider.dart';

import 'mythemeData.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp( EasyLocalization(
    startLocale: Locale('ar'),
    saveLocale: true,
    supportedLocales: [
      Locale('en'),Locale('ar')
    ],path: 'assets/translations',fallbackLocale: Locale('en','ar'),
    child: ChangeNotifierProvider(
        create: (context) => myprovider(),
        child: myapp()),
  ));
}
class myapp extends StatefulWidget {
  myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<myprovider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode:provider.mode ,
      darkTheme:mythemedata.darkTheme ,
      theme:mythemedata.lightTheme ,

      initialRoute:HomeScreen.routName,routes: {
      HomeScreen.routName:(context)=>HomeScreen(),
      souradetels.routName:(context)=>souradetels(),
      ahadethdetels.routName:(context)=>ahadethdetels()
    },
    );
  }
}
