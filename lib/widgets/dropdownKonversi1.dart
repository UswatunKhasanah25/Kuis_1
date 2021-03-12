import 'package:flutter/material.dart';

class DropdownKonversi1 extends StatelessWidget {
  const DropdownKonversi1({
    Key key,
    @required this.listItem1,
    @required this.newValue1,
    @required this.dropdownOnChanged1, this.konversi,
  }) : super(key: key);

  final List<String> listItem1;
  final String newValue1;
  final Function dropdownOnChanged1;
  final Function konversi;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text(
            "Dari : ",
          )),
        Expanded(
          child: DropdownButton<String>(
            items: listItem1.map((String value){
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),);
            }).toList(),
            value: newValue1,
            onChanged: dropdownOnChanged1,
    ))]);
  }
}
