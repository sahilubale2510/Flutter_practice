import 'package:flutter/material.dart';
import 'homeScreen.dart'; // For Book model

class DetailScreen extends StatelessWidget {
  final Book book;

  const DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Author: ${book.author}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(book.description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key, required this.username});

//   final String username;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("DetailScreen"),
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//         child: Container(
//           height: 100,
//           width: 100,
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Center(child: Text("Hello $username")),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//     );
//   }
// }
