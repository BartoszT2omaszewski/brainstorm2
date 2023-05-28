import 'package:flutter/material.dart';

enum BottomNavigationBarPage { home, adding, validation }

class MyBottomNavigationBar extends StatelessWidget {
  final BottomNavigationBarPage selectedPage;

  const MyBottomNavigationBar({super.key, required this.selectedPage});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _getPageIndex(selectedPage),
      onTap: (index) {
        _navigateToPage(context, index);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Strona Główna',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Dodawanie Pomysłów',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check),
          label: 'Centrum Walidacji',
        ),
      ],
    );
  }

  int _getPageIndex(BottomNavigationBarPage page) {
    switch (page) {
      case BottomNavigationBarPage.home:
        return 0;
      case BottomNavigationBarPage.adding:
        return 1;
      case BottomNavigationBarPage.validation:
        return 2;
      default:
        return 0;
    }
  }

  void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/adding');
        break;
      case 2:
        Navigator.pushNamed(context, '/validation');
        break;
    }
  }
}
