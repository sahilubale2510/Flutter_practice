import 'package:flutter/material.dart';

// ignore: camel_case_types
class day2_Page extends StatelessWidget {
  day2_Page({super.key});

  final List _number = [
    '46 17 24 7 35 57',
    '30 20 5 58 10 56',
    '31 58 33 23 38 15',
    '23 36 15 20 38 33',
    '37 55 15 35 6 44',
    '46 17 24 7 35 57',
    '30 20 5 58 10 56',
    '31 58 33 23 38 15',
    '23 36 15 20 38 33',
    '37 55 15 35 6 44',
    '46 17 24 7 35 57',
    '30 20 5 58 10 56',
    '31 58 33 23 38 15',
    '23 36 15 20 38 33',
    '37 55 15 35 6 44',
    '46 17 24 7 35 57',
    '30 20 5 58 10 56',
    '31 58 33 23 38 15',
    '23 36 15 20 38 33',
    '37 55 15 35 6 44',
    '46 17 24 7 35 57',
    '30 20 5 58 10 56',
    '31 58 33 23 38 15',
    '23 36 15 20 38 33',
    '37 55 15 35 6 44',
  ];

  final List _names = [
    'Sahil',
    'Om',
    'Aditya',
    'Hariom',
    'Chetna',
    'Sahil',
    'Om',
    'Aditya',
    'Hariom',
    'Chetna',
    'Sahil',
    'Om',
    'Aditya',
    'Hariom',
    'Chetna',
    'Sahil',
    'Om',
    'Aditya',
    'Hariom',
    'Chetna',
    'Sahil',
    'Om',
    'Aditya',
    'Hariom',
    'Chetna',
  ];

  final List _pictures = [
    'Photo1',
    'Photo2',
    'Photo3',
    'Photo4',
    'Photo5',
    'Photo6',
    'Photo7',
    'Photo8',
    'Photo9',
    'Photo10',
    'Photo11',
    'Photo12',
    'Photo13',
    'Photo14',
    'Photo15',
    'Photo16',
    'Photo17',
    'Photo18',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 2"), backgroundColor: Colors.blueAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 50,
          //     decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 163, 163, 163),
          //       borderRadius: BorderRadius.circular(50),
          //     ),
          //     child: Row(
          //       children: [
          //         SizedBox(width: 10),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Icon(Icons.search),
          //         ),
          //         SizedBox(width: 10),
          //         Expanded(
          //           child: TextField(
          //             keyboardType: TextInputType.text,
          //             decoration: InputDecoration(
          //               border: InputBorder.none,
          //               hintText: "Enter the number",
          //               labelText: "Contacts",
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: _pictures.length,
                itemBuilder: (context, index) {
                  return GridTile(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                      child: Center(child: Text(_pictures[index])),
                    ),
                  );
                },
              ),
            ),
          ),

          // Expanded(
          //   child: ListView.builder(
          //     itemCount: _number.length,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Text(_number[index]),
          //         subtitle: Text(_names[index]),
          //         leading: Icon(Icons.person),
          //         trailing: Icon(Icons.turn_right),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}

// class Square extends StatelessWidget {
//   const Square({super.key, required this.child});

//   final String child;
//   // const Square({required this.child});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Row(
//             children: [
//               Icon(Icons.person),
//               Text(child, style: TextStyle(fontSize: 25, color: Colors.blue)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
