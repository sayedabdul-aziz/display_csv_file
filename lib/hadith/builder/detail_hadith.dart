import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/app_colors.dart';
import '../widget/content_hadith_widget.dart';

class HadithDetails extends StatefulWidget {
  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  List<List<dynamic>>? data;
  @override
  void initState() {
    loadAsset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return data == null
        ? const Center(
            child: CircularProgressIndicator(
            color: AppColor.primaryColor,
          ))
        : ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: data!.length,
            itemBuilder: (builder, index) {
              return ContentHadithWidget(
                num: index + 1,
                text: data![index].toString(),
              );
            },
          );
  }

  //________________________load a csv file____________________________________

  loadAsset() async {
    var myData = await rootBundle.loadString("assets/hadith.csv");
    List<List<dynamic>> csvTable =
        const CsvToListConverter(eol: "\n").convert(myData);
    setState(() {
      data = csvTable;
    });
  }
}
