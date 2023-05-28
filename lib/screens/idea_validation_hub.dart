import 'package:brainstorm2/widgets/app_bar.dart';
import 'package:brainstorm2/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class IdeaValidationHub extends StatelessWidget {
  const IdeaValidationHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Centrum Walidacji Pomysłów Społeczności',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              'Centrum Walidacji Pomysłów Społeczności',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Center(
                child: Text(
                  'Content of the Idea Validation Hub',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedPage: BottomNavigationBarPage.validation,
        onPageSelected: (page) {
          // Handle navigation to other pages if needed
        },
      ),
    );
  }
}
