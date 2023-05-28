import 'package:brainstorm2/widgets/app_bar.dart';
import 'package:brainstorm2/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AddingPage extends StatelessWidget {
  const AddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: 'Strona Dodawania Pomysłów',
      ),
      body: Center(
        child: Text('Strona Dodawania Pomysłów'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedPage: BottomNavigationBarPage.adding,
      ),
    );
  }
}
