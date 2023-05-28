import 'package:brainstorm2/widgets/app_bar.dart';
import 'package:brainstorm2/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class IdeaValidationHub extends StatelessWidget {
  const IdeaValidationHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: 'Centrum Walidacji Pomysłów Społeczności',
      ),
      body: Center(
        child: Text('Centrum Walidacji Pomysłów Społeczności'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedPage: BottomNavigationBarPage.validation,
      ),
    );
  }
}
