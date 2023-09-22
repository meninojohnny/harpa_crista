import 'package:flutter/material.dart';

import '../hinos/hinos.dart';
import '../widgets/makeItem.dart';

class HinosFavoritosPage extends StatefulWidget {
  final Hinos hinos;
  const HinosFavoritosPage({super.key, required this.hinos});

  @override
  State createState() => _HinosFavoritosPage(hinos: hinos);
}

class _HinosFavoritosPage extends State {
  final Hinos hinos;
  _HinosFavoritosPage({required this.hinos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      // drawer: Drawer(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       GestureDetector(
      //         onTap: () {},
      //         child: Container(
      //           width: double.infinity,
      //           padding: EdgeInsets.only(top: 10, left: 20),
      //           child: Text(
      //             'Favoritos',
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         ),
      //       ),
      //       Divider(),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: ListView.builder(
            itemCount: hinos.hinos.length,
            itemBuilder: (context, index) {
              if (hinos.hinos[index]['favorito']) {
                return MakeItem(
                  hino: hinos.hinos[index],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
