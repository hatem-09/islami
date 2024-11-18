import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/AppColor/appcolor.dart';


class languages extends StatelessWidget {
  const languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          child: InkWell(
            onTap: () {
              context.setLocale(Locale('en'));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english".tr(),
                  style: TextStyle(
                      fontSize: 22,
                      color: context.locale == Locale('en')
                          ? Colors.grey
                          : AppColors.primary),
                ),
                context.locale == Locale('en')
                    ? Icon(
                        Icons.done,
                        color: Colors.grey,
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          child: InkWell(
            onTap: () {
              context.setLocale(Locale('ar'));
            },
            child: Row(
              children: [
                Text(
                  "arabic".tr(),
                  style: TextStyle(
                      fontSize: 22,
                      color: context.locale != Locale('en')
                          ? Colors.grey
                          : AppColors.primary),
                ),
                context.locale != Locale('en')
                    ? Icon(
                        Icons.done,
                        color: Colors.grey,
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
