import 'package:flutter/material.dart';
import 'package:my_first_project/Dashboard/Dashboard1.dart';

void main() => runApp(Demo());

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
      ),
      home: Dashboard1(),
    );
  }
}
