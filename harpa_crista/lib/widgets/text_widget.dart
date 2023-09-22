import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final Map letra;
  TextWidget({super.key, required this.letra});
  TextStyle textNormal = TextStyle(fontSize: 15);
  TextStyle textBold = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Text(letra['letra'],
        style: letra['isParagrafo'] ? textBold : textNormal);
    // style: TextStyle(fontSize: 20),);
  }
}
