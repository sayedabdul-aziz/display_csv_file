import 'package:flutter/material.dart';

import 'core/app_colors.dart';
import 'hadith/Index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hadith App',
      theme: ThemeData(primaryColor: AppColor.primaryColor),
      home: HadithHome(),
    );
  }
}
