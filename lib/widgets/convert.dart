import 'package:flutter/material.dart'; //mengimport package tersebut untuk dieksekusi di sini

class Convert extends StatelessWidget {
  final Function konvertHandler; //

  Convert({Key key, @required this.konvertHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      child :RaisedButton( //membuat tombol atau button nampun transparan
      onPressed: konvertHandler, //memanggil fungsi konvertHandler
      textColor: Colors.white, 
      color: Colors.pink,
      child: Text(
        "Konversi",
      ),
    ),
      );
  }
}