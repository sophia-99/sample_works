import 'package:calculator_ui/calculator/home_page.dart';

import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}
