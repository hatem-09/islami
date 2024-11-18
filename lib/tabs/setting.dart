import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/AppColor/appcolor.dart';
import 'package:islami/sheets/languages.dart';
import 'package:islami/sheets/themeing.dart';


class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "theme".tr(),
            style: TextStyle(fontSize: 25),
          ),
          Container(
            padding: EdgeInsets.all(7),
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.black)),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(context: context,
                  backgroundColor: AppColors.white,
                  builder:(context) {
                  return themeing();
                },);
              },
              child: Text(
                "light".tr(),
                style: TextStyle(fontSize: 25),
              ),
            ),width: double.infinity,
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "language".tr(),
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.black)),
                  child: InkWell(
                    onTap: (){
                      showModalBottomSheet(context: context,
                        backgroundColor: AppColors.white,
                        builder: (context) {
                        return languages();
                      },);
                    },
                    child: Text(
                      "arabic".tr(),
                      style: TextStyle(fontSize: 25),
                    ),
                  ),width: double.infinity,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
