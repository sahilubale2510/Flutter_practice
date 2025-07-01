import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week1/pages/day7.dart';
import 'package:week1/pages/providor_practice.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => NumberList())],
      child: MaterialApp(home: Day7()),
    ),
  );
}
