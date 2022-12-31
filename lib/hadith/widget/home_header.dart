import 'package:display_csv_file/core/app_colors.dart';
import 'package:flutter/material.dart';

class HadithHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.17,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      padding: const EdgeInsets.only(right: 14, top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColor.primaryColor.withOpacity(0.6),
            blurRadius: 9,
            offset: const Offset(0, 20),
            spreadRadius: -20,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromARGB(255, 30, 49, 9),
            AppColor.primaryColor.withOpacity(0.9)
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            Positioned(
              child: ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.menu_book,
                          color: Colors.white, size: 20),
                      const SizedBox(width: 8),
                      Text('الحديث الشريف',
                          style: Theme.of(context)
                              .textTheme
                              .apply(bodyColor: Colors.white, fontSizeDelta: -5)
                              .bodyText1),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Surah title
                        Text(
                          '﴿وَمَا يَنْطِقُ عَنِ الْهَوَى . إِنْ هُوَ إِلَّا وَحْيٌ يُوحَى ﴾',
                          style: Theme.of(context)
                              .textTheme
                              .apply(
                                  bodyColor: Colors.white,
                                  fontFamily: 'Aviny',
                                  fontSizeDelta: 1.9)
                              .bodyLarge,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -40,
              bottom: -5,
              child: SizedBox(
                width: 200,
                child: Image.asset(
                  'assets/A3.png',
                  height: 110,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
