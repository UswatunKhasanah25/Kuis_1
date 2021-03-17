import 'package:flutter/material.dart'; //mengimport package tersebut untuk dieksekusi di sini

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.inputController,
  }) : super(key: key);

  final TextEditingController inputController ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      decoration: InputDecoration(
        hintText: "Masukkan Bilangan",
        border: new OutlineInputBorder(
          borderSide : new BorderSide(
            color: Colors.teal,)
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
