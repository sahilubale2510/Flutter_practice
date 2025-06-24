import 'package:flutter/material.dart';
import 'package:week1/pages/day2.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Week 1",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return day2_Page();
  }
}
