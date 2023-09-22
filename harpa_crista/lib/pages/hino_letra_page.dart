import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';

class HinoLetraPage extends StatelessWidget {
  final String title;
  final List<Map> letra;

  const HinoLetraPage({super.key, required this.letra, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: ListView.builder(
            itemCount: letra.length,
            itemBuilder: (context, index) {
              return TextWidget(letra: letra[index]);
            },
          ),
        ),
      ),
    );
  }
}
