import 'package:flutter/material.dart';

enum BottomNavigationBarPage {
  home,
  addIdea,
  validate,
  validation,
}

class MyBottomNavigationBar extends StatelessWidget {
  final BottomNavigationBarPage selectedPage;
  final void Function(BottomNavigationBarPage) onPageSelected;

  const MyBottomNavigationBar({
    Key? key,
    required this.selectedPage,
    required this.onPageSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedPage.index,
      onTap: (index) {
        final selectedPage = BottomNavigationBarPage.values[index];
        onPageSelected(selectedPage);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Add Idea',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check),
          label: 'Validate',
        ),
      ],
    );
  }
}
