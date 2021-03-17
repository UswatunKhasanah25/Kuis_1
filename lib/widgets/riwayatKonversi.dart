import 'package:flutter/material.dart'; //mengimport package tersebut untuk dieksekusi di sini

class RiwayatKonversi extends StatelessWidget { 
  const RiwayatKonversi({ //deklarasi variabel
    Key key, 
    @required this.listViewItem,
  }) : super(key: key);

  final List<String> listViewItem; //deklarasi variabel

  @override
  Widget build(BuildContext context) {
    return ListView( //widget untuk membuat list
      children: listViewItem.map((String value) { //melakukan iterasi untuk setiap item dari listItem sesuai dengan parameter 
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Text(
            value,
            style: TextStyle(fontSize: 15),
          ),
          );
      }).toList()
    );
  }
}