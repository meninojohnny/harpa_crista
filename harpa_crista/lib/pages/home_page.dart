import 'package:flutter/material.dart';

import '../hinos/hinos.dart';
import '../widgets/makeItem.dart';
import 'hinos_favoritos.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  Hinos hinos = Hinos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harpa Cristã'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HinosFavoritosPage(hinos: hinos),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Favoritos',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: ListView.builder(
            itemCount: hinos.hinos.length,
            itemBuilder: (context, index) {
              return MakeItem(
                hino: hinos.hinos[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
