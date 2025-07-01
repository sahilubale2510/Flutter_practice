import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week1/pages/day7_2.dart';
import 'package:week1/pages/providor_practice.dart';

class Day7 extends StatefulWidget {
  const Day7({super.key});

  @override
  State<Day7> createState() => _Day7State();
}

class _Day7State extends State<Day7> {
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(numberList.numbers.last.toString()),
                  ElevatedButton(
                    onPressed: () {
                      numberList.increment();
                    },
                    child: Text("Increment"),
                  ),

                  Text('Count = ${numberList.count}'),
                  ElevatedButton(
                    onPressed: () {
                      numberList.add();
                    },
                    child: Text("Add"),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Day7_2()),
                      );
                    },
                    child: Text("2nd Page"),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
