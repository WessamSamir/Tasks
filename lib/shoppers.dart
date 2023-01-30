import 'package:flutter/material.dart';

import 'detail_screen.dart';

class Shoppers extends StatefulWidget {
  @override
  State<Shoppers> createState() => _ShoppersState();
}

class Cards {
  final String image;
  final String name;
  final String price;
  final String details;
  Cards({
    required this.image,
    required this.name,
    required this.price,
    required this.details,
  });
}

class _ShoppersState extends State<Shoppers> {
  List<Cards> card = [
    Cards(image: 'images/cap.jpg', name: 'Cap', price: 'RS 150', details: 'Write the description of product here'),
    Cards(image: 'images/shoes.jpg', name: 'Adidas shoes', price: 'RS 150', details: 'Write the description of product here'),
    Cards(image: 'images/jacket.jpg', name: 'Jacket', price: 'RS 150', details: 'Write the description of product here'),
    Cards(image: 'images/skirt.jpg', name: 'Skirt', price: 'RS 150', details: 'Write the description of product here'),
    Cards(image: 'images/shoe.jpg', name: 'Adidas shoes', price: 'RS 150', details: 'Write the description of product here'),
    Cards(image: 'images/watch.jpg', name: 'Smart watch', price: 'RS 150', details: 'Write the description of product here'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'SHOPPERS',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              childAspectRatio: 0.85,
            ),
            itemCount: card.length,
            itemBuilder: (context, index) => buildCard(card[index]),
          ),
        ),
      ),
    );
  }

  Widget buildCard(Cards card) => GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(
        builder: (context) => Details_screen(
          image: card.image,
          name: card.name,
          price: card.price,
          details: card.details,
        ),
      ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage('${card.image}'),
              height: 120.0,
              width: 120.0,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${card.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              '${card.price}',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                2.0,
                2.0,
              ),
              blurRadius: 10.0,
            ),
          ],
        ),
      ),
    ),
  );
}
