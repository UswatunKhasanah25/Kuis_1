import 'package:flutter/material.dart';
import 'package:konversi_byte/widgets/result.dart';

import 'widgets/input.dart';
import 'widgets/dropdownKonversi1.dart';
import 'widgets/dropdownKonversi2.dart';
import 'widgets/result.dart';
import 'widgets/convert.dart';
import 'widgets/riwayatKonversi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double inputUser = 0;
  double bit = 0;
  double byte = 0;
  double kilobyte = 0;
  double megabyte = 0;
  double gigabyte = 0;
  var listItem1 = [
     "bit",
      "byte",
      "kilobyte",
      "megabyte",
      "gigabyte"
  ];
  var listItem2 = [
     "bit",
      "byte",
      "kilobyte",
      "megabyte",
      "gigabyte"
  ];
  final inputController = TextEditingController();

  String newValue1 = "bit";
  String newValue2 = "byte";
  double result = 0;
  List<String> listViewItem = List<String>();

  void konversi() {
    setState(() {
      inputUser = double.parse(inputController.value.text);
      if (newValue1 == "bit") {
        if (newValue2 == "byte") 
          result = inputUser / 8;
        else if (newValue2 == "kilobyte") 
          result = inputUser / (8 * 1024); 
        else if (newValue2 == "megabyte") 
          result = inputUser / (8 * 1024 * 1024);
        else if (newValue2 == "gigabyte")
          result = inputUser / (8 * 1024 * 1024 * 1024);
        else 
          result = inputUser * 1;
        listViewItem.add("$newValue1 --> $newValue2 = $result");
      }      
      else if (newValue1 == "byte") {
        if (newValue2 == "bit") 
          result = inputUser * 8;
        else if (newValue2 == "kilobyte") 
          result = inputUser / 1024;
        else if (newValue2 == "megabyte")
          result = inputUser / (1024 * 1024);
        else if (newValue2 == "gigabyte")
          result = inputUser / (1024 * 1024 * 1024);
        else 
          result = inputUser * 1;
        listViewItem.add("$newValue1 --> $newValue2 = $result");
      }
      else if (newValue1 == "kilobyte") {
        if (newValue2 == "bit")
          result = inputUser * 1024 * 8;
        else if (newValue2 == "byte")
          result = inputUser * 1024;
        else if (newValue2 == "megabyte")
          result = inputUser / 1024;
        else if (newValue2 == "gigabyte")
          result = inputUser / (1024 * 1024);
        else 
          result = inputUser * 1;
        listViewItem.add("$newValue1 --> $newValue2 = $result");
      }
      else if (newValue1 == "megabyte") {
        if (newValue2 == "bit")
          result = inputUser * 1024 * 1024 * 8;
        else if (newValue2 == "byte")
          result = inputUser * 1024 * 1024;
        else if (newValue2 == "kilobyte")
          result = inputUser * 1024;
        else if (newValue2 == "gigabyte")
          result = inputUser / 1024;
        else 
          result = inputUser * 1;
        listViewItem.add("$newValue1 --> $newValue2 = $result");
      }
      else {
        if (newValue2 == "bit")
          result = inputUser * 1024 * 1024 * 1024 * 8;
        else if (newValue2 == "byte")
          result = inputUser * 1024 * 1024 * 1024;
        else if (newValue2 == "kilobyte")
          result = inputUser * 1024 * 1024;
        else if (newValue2 == "megabyte")
          result = inputUser * 1024;
        else 
          result = inputUser * 1;
        listViewItem.add("$newValue1 --> $newValue2 = $result");
      }
    });
  }
  void dropdownOnChanged1(String changeValue1){
    setState(() {
      newValue1 = changeValue1;
      konversi();
    });
  }
  void dropdownOnChanged2(String changeValue2){
    setState(() {
      newValue2 = changeValue2;
      konversi();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold (
        appBar: AppBar(
          title: Text("Konversi Byte"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Image.network("https://2.bp.blogspot.com/-3QLlkOtAqh8/V4llKSOBQMI/AAAAAAAAANw/L1zSRGlpnAsMhmTYs3bHgQT7xrYHKxlFACLcB/s1600/kb.jpg"),
              Input(inputController: inputController),
              DropdownKonversi1(listItem1: listItem1, newValue1: newValue1, dropdownOnChanged1: dropdownOnChanged1, konversi: konversi),
              DropdownKonversi2(listItem2: listItem2, newValue2: newValue2, dropdownOnChanged2: dropdownOnChanged2, konversi: konversi),
              Result(result: result),
              Convert(konvertHandler: konversi),
              Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Riwayat Konversi",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  child: RiwayatKonversi(listViewItem: listViewItem)
                ),
            ],
            ),
          ),
      )
    );
  }
}


