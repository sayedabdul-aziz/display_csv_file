import 'package:display_csv_file/core/app_colors.dart';
import 'package:flutter/material.dart';

class ContentHadithWidget extends StatelessWidget {
  final int? num;
  String? text;
  ContentHadithWidget({this.num, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Event widget
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColor.secondryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Number
              Container(
                margin: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: AppColor.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(num.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white)),
                ),
              ),

              //Icon
              Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.share_outlined,
                          color: AppColor.primaryColor),
                      onPressed: () {}),
                ],
              ),
            ],
          ),
        ),

        //Content
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: Text(
              text ?? '',
              style: Theme.of(context)
                  .textTheme
                  .apply(fontFamily: 'Aviny', fontSizeDelta: 1.9)
                  .bodyLarge,
            )),
      ],
    );
  }
}
