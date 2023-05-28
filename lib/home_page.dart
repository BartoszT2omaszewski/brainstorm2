// import 'package:brainstorm2/screens/adding_page.dart';
// import 'package:brainstorm2/screens/idea_validation_hub.dart';
// import 'package:brainstorm2/widgets/idea_card.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:brainstorm2/widgets/app_bar.dart';
// import 'package:brainstorm2/widgets/bottom_navigation_bar.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const MyAppBar(
//         title: 'Strona Główna',
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Text(
//               'Powitanie i opis',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16.0),
//             const Text(
//               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique magna eget vestibulum venenatis. Phasellus pharetra odio vitae dolor vestibulum, sed convallis lacus congue.',
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 24.0),
//             const Text(
//               'Sekcja z popularnymi pomysłami',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16.0),
//             Expanded(
//               child: ListView(
//                 children: const [
//                   IdeaCard(
//                     author: 'John Doe',
//                     title: 'Amazing Idea 1',
//                     description: 'This is an amazing idea for the project.',
//                   ),
//                   SizedBox(height: 16.0),
//                   IdeaCard(
//                     author: 'Jane Smith',
//                     title: 'Innovative Idea 2',
//                     description: 'This idea will revolutionize the industry.',
//                   ),
//                   SizedBox(height: 16.0),
//                   IdeaCard(
//                     author: 'Alex Johnson',
//                     title: 'Creative Idea 3',
//                     description: 'A unique and creative idea to explore.',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const MyBottomNavigationBar(
//           selectedPage: BottomNavigationBarPage.home),
//     );
//   }
// }

// class IdeaCard extends StatelessWidget {
//   final String author;
//   final String title;
//   final String description;

//   const IdeaCard({
//     super.key,
//     required this.author,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           Container(
//             height: 120,
//             width: double.infinity,
//             color: Colors.grey[300],
//           ),
//           const SizedBox(height: 8.0),
//           Text(
//             'Author: $author',
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'Title: $title',
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text('Description: $description'),
//         ],
//       ),
//     );
//   }
// }
