import 'package:display_csv_file/core/app_colors.dart';
import 'package:display_csv_file/hadith/widget/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'builder/detail_hadith.dart';

class HadithHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white));
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'السنة النبوية',
            style: TextStyle(
                fontFamily: "Aviny",
                fontSize: 22,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                    color: Colors.black38.withOpacity(0.1),
                    blurRadius: 9,
                    offset: const Offset(0, 2),
                  )
                ]),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NestedScrollView(
              physics: const BouncingScrollPhysics(),
              headerSliverBuilder: (context, value) {
                return [
                  //________________________Card in header____________________________________

                  SliverAppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    expandedHeight: MediaQuery.of(context).size.height * 0.18,
                    flexibleSpace: FlexibleSpaceBar(
                      background: HadithHeader(),
                    ),
                  ),
                ];
              },

              //________________________Content of hadith ____________________________________

              body: HadithDetails()),
        ),
      ),
    );
  }
}
