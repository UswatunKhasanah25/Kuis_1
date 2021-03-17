import 'package:flutter/material.dart'; //mengimport package tersebut untuk dieksekusi di sini
import 'package:konversi_byte/widgets/result.dart'; //mengimport package tersebut untuk dieksekusi di sini

import 'widgets/input.dart'; //mengimport file pada folder widget untuk dieksekusi
import 'widgets/dropdownKonversi1.dart'; //mengimport file pada folder widget untuk dieksekusi
import 'widgets/dropdownKonversi2.dart'; //mengimport file pada folder widget untuk dieksekusi
import 'widgets/result.dart'; //mengimport file pada folder widget untuk dieksekusi
import 'widgets/convert.dart'; //mengimport file pada folder widget untuk dieksekusi
import 'widgets/riwayatKonversi.dart'; //mengimport file pada folder widget untuk dieksekusi

void main() {
  runApp(MyApp()); //untuk memanggil fungsi ketika pertama kali dijalankan
}

class MyApp extends StatefulWidget { //bersifat dinamis, dapat diperbarui melalui widget yang berisi state
  @override
  _MyAppState createState() => _MyAppState(); //struktur dasar statefull widget
}

class _MyAppState extends State<MyApp> {
  double inputUser = 0; //variabel
  double bit = 0; //variabel
  double byte = 0; //variabel
  double kilobyte = 0; //variabel
  double megabyte = 0; //variabel
  double gigabyte = 0; //variabel
  var listItem1 = [ //kumpulan list yang akan ditampilkan di dropdown
     "bit",
      "byte",
      "kilobyte",
      "megabyte",
      "gigabyte"
  ];
  var listItem2 = [ //kumpulan list yang akan ditampilkan di dropdown
     "bit",
      "byte",
      "kilobyte",
      "megabyte",
      "gigabyte"
  ];
  final inputController = TextEditingController(); //membuat controller untuk textfield

  String newValue1 = "bit"; //mengeset nilai pada dropdown
  String newValue2 = "byte"; //mengeset nilai pada dropdown
  double result = 0; //variabel
  List<String> listViewItem = List<String>(); //variabel

  void konversi() { //method untuk konversi nilai
    setState(() { //memberitahu widget ketika ada object yang berubah pada state
      inputUser = double.parse(inputController.value.text); //mengambil nilai dari textform field yang bertipe double
      if (newValue1 == "bit") { //kondisi 1 jika benar dan jika salah menjalankan kondisi 1 berikutnya
        if (newValue2 == "byte") //kondisi 2 (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / 8; //proses jika kondisi benar
        else if (newValue2 == "kilobyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / (8 * 1024); //proses jika kondisi benar
        else if (newValue2 == "megabyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / (8 * 1024 * 1024); //proses jika kondisi benar
        else if (newValue2 == "gigabyte")//kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / (8 * 1024 * 1024 * 1024); //proses jika kondisi benar
        else //kondisi kedua 2 jika kondisi sebelumnya salah
          result = inputUser * 1; //proses jika kondisi benar
        listViewItem.add("$inputUser $newValue1 == $result $newValue2"); //menambahkan data kedalam list
      }      
      else if (newValue1 == "byte") { //kondisi 1, jika kondisi sebelumnya salah
        if (newValue2 == "bit") //kondisi 2 (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 8; //proses jika kondisi benar
        else if (newValue2 == "kilobyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / 1024; //proses jika kondisi benar
        else if (newValue2 == "megabyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / (1024 * 1024); //proses jika kondisi benar
        else if (newValue2 == "gigabyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / (1024 * 1024 * 1024); //proses jika kondisi benar
        else //kondisi 2 jika kondisi sebelumnya salah 
          result = inputUser * 1; //proses jika kondisi benar
        listViewItem.add("$inputUser $newValue1 == $result $newValue2"); //menambahkan data kedalam list
      }
      else if (newValue1 == "kilobyte") {  //kondisi 1, jika kondisi sebelumnya salah
        if (newValue2 == "bit") //kondisi 2 (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024 * 8; //proses jika kondisi benar
        else if (newValue2 == "byte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024; //proses jika kondisi benar
        else if (newValue2 == "megabyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / 1024; //proses jika kondisi benar
        else if (newValue2 == "gigabyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / (1024 * 1024); //proses jika kondisi benar
        else //kondisi 2 jika kondisi sebelumnya salah 
          result = inputUser * 1; //proses jika kondisi benar
        listViewItem.add("$inputUser $newValue1 == $result $newValue2"); //menambahkan data kedalam list
      }
      else if (newValue1 == "megabyte") {  //kondisi 1, jika kondisi sebelumnya salah
        if (newValue2 == "bit") //kondisi 2 (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024 * 1024 * 8; //proses jika kondisi benar
        else if (newValue2 == "byte") //kondisi 2 jika kondisi sebelumnya salah(jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024 * 1024; //proses jika kondisi benar
        else if (newValue2 == "kilobyte") //kondisi 2 jika kondisi sebelumnya salah(jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024; //proses jika kondisi benar
        else if (newValue2 == "gigabyte") //kondisi 2 jika kondisi sebelumnya salah(jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser / 1024; //proses jika kondisi benar
        else //kondisi 2 jika kondisi sebelumnya salah
          result = inputUser * 1; //proses jika kondisi benar
        listViewItem.add("$inputUser $newValue1 == $result $newValue2");
      }
      else { //kondisi 1, jika kondisi sebelumnya salah
        if (newValue2 == "bit") //kondisi 2 (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024 * 1024 * 1024 * 8; //proses jika kondisi benar
        else if (newValue2 == "byte") //kondisi 2 jika kondisi sebelumnya salah(jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024 * 1024 * 1024; //proses jika kondisi benar
        else if (newValue2 == "kilobyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024 * 1024; //proses jika kondisi benar
        else if (newValue2 == "megabyte") //kondisi 2 jika kondisi sebelumnya salah (jika kondisi 2 benar makan akan menjalankan result dan jika salah akan menjalankan kondisi 2 berikutnya)
          result = inputUser * 1024; //proses jika kondisi benar
        else 
          result = inputUser * 1; //proses jika kondisi benar
        listViewItem.add("$inputUser $newValue1 == $result $newValue2 "); //menambahkan data kedalam list
      }
    });
  }
  void dropdownOnChanged1(String changeValue1){ //mengubah nilai sesuai dengan pilihan pada dropdown
    setState(() { //memberitahu widget ketika ada object yang berubah pada state
      newValue1 = changeValue1; //merubah penamaan pada variabel
      konversi(); //memanggil method konversi
    });
  }
  void dropdownOnChanged2(String changeValue2){ //mengubah nilai sesuai dengan pilihan pada dropdown
    setState(() { //memberitahu widget ketika ada object yang berubah pada state
      newValue2 = changeValue2; //merubah penamaan pada variabel
      konversi(); //memanggil method konversi
    });
  }

  @override
  Widget build(BuildContext context) { 
    return MaterialApp( //membungkus sejumlah widget 
      title: 'Flutter Demo', 
      theme: ThemeData(
        primarySwatch: Colors.pink, //memberikan warna pada appbar
      ),
      home: Scaffold ( //widget untuk mengatur tata letak 
        appBar: AppBar( //widget membuat app bar
          title: Text("Konversi Byte"), //menampilkan text pada appbar
        ),
        body: Container(
          margin: EdgeInsets.all(8), //memberikan margin sebesar value 
          child: Column( //widget column 
            children: <Widget>[ //menampung banyak widget
              Input(inputController: inputController), //berisi widget TextFromField dan controllernya
              DropdownKonversi1(listItem1: listItem1, newValue1: newValue1, dropdownOnChanged1: dropdownOnChanged1, konversi: konversi), //berisi dropdown dan controllernya
              DropdownKonversi2(listItem2: listItem2, newValue2: newValue2, dropdownOnChanged2: dropdownOnChanged2, konversi: konversi), //berisi dropdown dan controllernya
              Result(result: result), //berisi widget hasil konversi yang memiliki variabel nama dan hasil
              Convert(konvertHandler: konversi), //berisi button dan reference ke function yang digunakan untuk melakukan setState
              Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10), //memberikan margin sebesar value 
                  child: Text( //menampilkan teks
                    "Riwayat Konversi",
                    style: TextStyle(fontSize: 20), //memberikan style pada teks
                  ),
                ),
                Expanded( //memperluas children dari row
                  child: RiwayatKonversi(listViewItem: listViewItem) //berisi listview hasil konversi
                ),
            ],
            ),
          ),
      )
    );
  }
}


