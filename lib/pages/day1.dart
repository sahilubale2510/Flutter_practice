import 'package:flutter/material.dart';

// ignore: camel_case_types
class day1_Page extends StatelessWidget {
  const day1_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 1 practice"),
        backgroundColor: const Color.fromARGB(255, 126, 240, 255),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Strwaberry Cake",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text("* ", style: TextStyle(fontSize: 20)),
                          Text("* ", style: TextStyle(fontSize: 20)),
                          Text("* ", style: TextStyle(fontSize: 20)),
                          Text("* ", style: TextStyle(fontSize: 20)),
                          Text("* ", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Text("170 Review", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.start),
                          Text(
                            "Prep",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(
                            "25 min",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.edit_note),
                          Text(
                            "Cook",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(
                            "1 hr",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.local_activity),
                          Text(
                            "Feeds",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(
                            "25 min",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
