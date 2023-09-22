import 'package:flutter/material.dart';

import '../pages/hino_letra_page.dart';

class MakeItem extends StatefulWidget {
  final Map hino;

  const MakeItem({super.key, required this.hino});

  @override
  State createState() => _MakeItemState(hino: hino);
}

class _MakeItemState extends State {
  final Map hino;
  // Color colorStar = isFavorited ? Colors.yellow : Colors.grey;
  _MakeItemState({required this.hino});

  void favorited() {
    hino['favorito'] = hino['favorito'] ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (hino['letra'] != '') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HinoLetraPage(
                    title: hino['title'],
                    letra: hino['letra'],
                  ),
                ),
              );
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${hino['id']} - ${hino['title'].toUpperCase()}',
                style: TextStyle(fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    favorited();
                  });
                },
                child: Icon(
                  Icons.star,
                  color: hino['favorito'] ? Colors.yellow : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
