import 'dart:ui';


import 'package:flutter/material.dart';

import 'models/clothing-cards.dart';
import 'models/clothing.dart';

void main() {
  runApp(const MaterialApp(
  home: ClothesList(),
  ));
}

class ClothesList extends StatefulWidget {
  const ClothesList({super.key});

  @override
  State<ClothesList> createState() => _ClothesListState();
}


class _ClothesListState extends State<ClothesList> {
  List<Clothes> clothes = [
    Clothes(
      name: 'T-Shirt',
      image: 'https://www.pngarts.com/files/1/T-Shirt-PNG-Background-Image.png',
      description: 'Description: Totally cotton.',
      price: 30.0,
    ),
    Clothes(
      name: 'Jeans',
      image: 'https://w7.pngwing.com/pngs/63/280/png-transparent-jeans-denim-slim-fit-pants-bell-bottoms-jeans-blue-fashion-boy-thumbnail.png',
      description : 'Description: Classic blue denim jeans, a wardrobe essential.',
      price: 80.0,
    ),
    Clothes(
      name: 'Sneakers',
      image: 'https://img.freepik.com/premium-psd/blue-sport-sneakers-shoes-isolated-transparent-background-png-psd_888962-1190.jpg',
      description: 'Description: Not waterproof',
      price: 150.0,
    ),
    Clothes(
      name: 'Hoodies',
      image: 'https://www.pngarts.com/files/11/White-Hoodie-PNG-Free-Download.png',
      description: 'Description: Relaxed fit hoodie made from a viscose blend fabric.',
      price: 63.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F0E1),
      appBar: AppBar(
        title: Text('Индекс: 203098'),
        centerTitle: true,
        backgroundColor: Color(0xFF5C3A29),
      ),
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ItemCard(
              item: clothes[index],
            ),
          );
        },
      ),
    );
  }
}
