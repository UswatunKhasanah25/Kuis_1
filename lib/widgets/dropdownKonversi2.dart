import 'package:flutter/material.dart'; //mengimport package tersebut untuk dieksekusi di sini

class DropdownKonversi2 extends StatelessWidget {
  const DropdownKonversi2({
    Key key,
    @required this.listItem2,
    @required this.newValue2,
    @required this.dropdownOnChanged2, this.konversi,
  }) : super(key: key);

  final List<String> listItem2;
  final String newValue2;
  final Function dropdownOnChanged2;
  final Function konversi;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text(
            "Ke : ",
          )),
        Expanded(
          child: DropdownButton<String>(
            items: listItem2.map((String value){
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),);
            }).toList(),
            value: newValue2,
            onChanged: dropdownOnChanged2,
          ))]);
  }
}
