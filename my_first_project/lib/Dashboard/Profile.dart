import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber,
            fontFamily: 'Matemasie',
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
