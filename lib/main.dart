import 'package:brainstorm2/home_page.dart';
import 'package:brainstorm2/screens/adding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
          // theme data
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/adding': (context) => const AddingPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const ErrorPage());
      },
    );
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text(
          'Oops! Something went wrong.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
