import 'package:flutter/material.dart';
import 'package:brainstorm2/models/idea_model.dart';

class AddingPage extends StatelessWidget {
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final void Function(IdeaModel) addIdea;

  AddingPage({Key? key, required this.addIdea}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dodawanie Pomysłu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(labelText: 'Author'),
            ),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            ElevatedButton(
              onPressed: () {
                final idea = IdeaModel(
                  id: DateTime.now().toString(),
                  author: _authorController.text,
                  title: _titleController.text,
                  description: _descriptionController.text,
                );
                addIdea(idea);
                Navigator.pop(context);
              },
              child: const Text('Add Idea'),
            ),
          ],
        ),
      ),
    );
  }
}
