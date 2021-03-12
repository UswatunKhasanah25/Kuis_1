import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function konvertHandler;

  Convert({Key key, @required this.konvertHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      child :RaisedButton(
      onPressed: konvertHandler,
      textColor: Colors.white,
      color: Colors.pink,
      child: Text(
        "Konversi",
      ),
    ),
      );
  }
}