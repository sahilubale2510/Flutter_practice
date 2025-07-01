import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week1/pages/providor_practice.dart';

// ignore: camel_case_types
class Day7_2 extends StatefulWidget {
  const Day7_2({super.key});

  @override
  State<Day7_2> createState() => _Day7State();
}

class _Day7State extends State<Day7_2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberList>(
      builder:
          (context, numberList, child) => Scaffold(
            appBar: AppBar(
              title: Text("Provider"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: Column(
                children: [
                  Text(numberList.numbers.last.toString()),
                  ElevatedButton(
                    onPressed: () {
                      numberList.increment();
                    },
                    child: Text("Add"),
                  ),

                  Text('Count= ${numberList.count}'),
                  ElevatedButton(
                    onPressed: () {
                      numberList.add();
                    },
                    child: Text("Add"),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
