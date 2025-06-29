import 'package:flutter/material.dart';

class Day6Page extends StatefulWidget {
  const Day6Page({super.key});

  @override
  State<Day6Page> createState() => _Day6PageState();
}

class _Day6PageState extends State<Day6Page> {
  int count = 0;
  bool isDarkMode = false;
  bool showDetails = false;

  void increment() {
    setState(() {
      count++;
    });
  }

  void toggleDarkMode(bool value) {
    if (value != isDarkMode) {
      setState(() {
        isDarkMode = value;
      });
    }
  }

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = isDarkMode ? Colors.black : Colors.white;
    final textColor = isDarkMode ? Colors.white : Colors.black;
    final boxColor = isDarkMode ? Colors.grey[800] : Colors.grey[200];

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: const Text("Day 6"), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Count = $count",
                  style: TextStyle(color: textColor),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: increment,
              child: const Text("Counter Increment"),
            ),
            Switch(value: isDarkMode, onChanged: toggleDarkMode),
            ElevatedButton(
              onPressed: toggleDetails,
              child: const Text("Toggle Details"),
            ),
            if (showDetails)
              Text(
                "Here are some extra details.",
                style: TextStyle(color: textColor),
              ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class day6_Page extends StatefulWidget {
//   const day6_Page({super.key});

//   @override
//   State<day6_Page> createState() => _day6_PageState();
// }

// // ignore: camel_case_types
// class _day6_PageState extends State<day6_Page> {
//   int count = 0;
//   bool isDarkMode = false;
//   bool showDetails = false;

//   void increament() {
//     setState(() {
//       count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Day 6"), backgroundColor: Colors.blue),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               height: 100,
//               width: 120,
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Center(child: Text("Count = $count")),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: increament,
//               child: Text("Counter Increment"),
//             ),

//             Switch(
//               value: isDarkMode,
//               onChanged: (value) {
//                 setState(() {
//                   isDarkMode = value;
//                 });
//               },
//             ),

//             // Text("Value of darkmode: $isDarkMode"),
//             ElevatedButton(
//               child: Text("Toggle Details"),
//               onPressed: () {
//                 setState(() {
//                   showDetails = !showDetails;
//                 });
//               },
//             ),
//             // Text("Value of showDetails: $showDetails"),
//             if (showDetails) Text("Here are some extra details."),
//           ],
//         ),
//       ),
//     );
//   }
// }
