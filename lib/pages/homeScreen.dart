import 'package:flutter/material.dart';
import 'package:week1/pages/DetailScreen.dart';

class Book {
  final String title;
  final String author;
  final String description;

  Book({required this.title, required this.author, required this.description});
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Book> books = [
    Book(
      title: 'The Alchemist',
      author: 'Paulo Coelho',
      description:
          'A young shepherd travels in search of a treasure and learns about the soul of the world.',
    ),
    Book(
      title: '1984',
      author: 'George Orwell',
      description:
          'A dystopian novel about totalitarianism and government surveillance.',
    ),
    Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      description:
          'A novel about racism, justice, and growing up in the American South.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book List')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(book.title),
              subtitle: Text('By ${book.author}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(book: book),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// // ignore: file_names
// import 'package:flutter/material.dart';
// import 'package:week1/pages/DetailScreen.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Multi screen app"),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DetailScreen(username: "Sahil"),
//               ),
//             );
//           },
//           child: Text("Detailes"),
//         ),
//       ),
//     );
//   }
// }
