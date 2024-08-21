import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber,
            fontFamily: 'Matemasie',
          ),
        ),
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
