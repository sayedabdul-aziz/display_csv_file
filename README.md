## Flutter: Load and display content from CSV files :smiley:

> CSV stands for Comma-Separated Values, is a file type widely used to store tabular data (numbers and text) in the plain text where each line will have the same number of fields. In this article, we will explore how to read content from a CSV file in Flutter and display that content on the screen.

## Steps

1. Copy the CSV file to the assets folder (create one if it doesn’t exist) in the root directory of your project. Don’t forget to declare this assets folder in the pubspec.yaml:

The following section is specific to Flutter.
```
flutter:
  assets:
    - assets/
```
 
2. Install the csv package by executing the following command:
```
flutter pub add csv
```
Then run:
```
flutter pub get
```
3. Add the following methode to load csv file.
```
List<List<dynamic>> _data = [];

  // This function is triggered when the floating button is pressed
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/kindacode.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      _data = _listData;
    });
  }
```

## Perview
![Screenshot_1672434494](https://user-images.githubusercontent.com/71665268/210120568-9b91ea47-d1de-45ba-bb6d-a5908e06844e.png)

enjoyy :smiling_face_with_three_hearts:
