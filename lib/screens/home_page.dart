import 'package:brainstorm2/bloc/home/home_cubit.dart';
import 'package:brainstorm2/bloc/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brainstorm2/screens/adding_page.dart';
import 'package:brainstorm2/widgets/bottom_navigation_bar.dart';
import 'package:brainstorm2/widgets/idea_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strona Główna'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Powitanie i opis',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique magna eget vestibulum venenatis. Phasellus pharetra odio vitae dolor vestibulum, sed convallis lacus congue.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Sekcja z popularnymi pomysłami',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeData) {
                    final ideas = state.ideas;
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                      ),
                      itemCount: ideas.length,
                      itemBuilder: (context, index) {
                        final idea = ideas[index];
                        return IdeaCard(idea: idea);
                      },
                    );
                  }
                  return const SizedBox(); // Return an empty SizedBox if state is not HomeData
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddingPage(
                addIdea: (IdeaModel) {},
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedPage: BottomNavigationBarPage.home,
        onPageSelected: (page) {
          context.read<HomeCubit>().navigateToPage(page);
        },
      ),
    );
  }
}
