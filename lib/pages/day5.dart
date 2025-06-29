import 'package:flutter/material.dart';

// ignore: camel_case_types
class day5_Page extends StatelessWidget {
  const day5_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 5"), backgroundColor: Colors.grey[200]),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
