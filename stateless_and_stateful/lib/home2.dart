// import 'package:flutter/material.dart';

// class HomePageStateFull extends StatefulWidget {
//   const HomePageStateFull({super.key});

//   @override
//   State<HomePageStateFull> createState() => _HomePageStateFullState();
// }

// class _HomePageStateFullState extends State<HomePageStateFull> {
//   int count = 12;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: const Text(
//           'Тапшырма 01',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Card(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
//                 child: Text(
//                   'сан: $count',
//                   style: const TextStyle(fontSize: 24),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     count--;
//                     print(count);
//                     setState(() {});
//                   },
//                   child: const Icon(Icons.remove),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     count++;
//                     print(count);
//                     setState(() {});
//                   },
//                   child: const Icon(Icons.add),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
