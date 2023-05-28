import 'package:brainstorm2/screens/adding_page.dart';
import 'package:brainstorm2/screens/idea_validation_hub.dart';
import 'package:brainstorm2/widgets/app_bar.dart';
import 'package:brainstorm2/widgets/bottom_navigation_bar.dart';
import 'package:brainstorm2/widgets/idea_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Strona Główna',
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddingPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const IdeaValidationHub()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  FlutterLogo(
                    size: 50,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'BrainStorm',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                children: const [
                  Text(
                    'Witaj w',
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'BrainStorm - Idea Validation Hub',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Zgłoś swoje pomysły, podziel się nimi z innymi i uzyskaj społeczne potwierdzenie!',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Popularne Pomysły',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            // Add popular ideas cards or grid/carousel here
            const IdeaCard(
              author: '', description: '', title: '',
              // Pass the idea details as parameters
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(
        selectedPage: BottomNavigationBarPage.home,
      ),
    );
  }
}
