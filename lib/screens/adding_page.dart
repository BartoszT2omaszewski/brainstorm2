import 'package:brainstorm2/models/idea_model.dart';
import 'package:flutter/material.dart';

class AddingPage extends StatefulWidget {
  final void Function(IdeaModel) addIdea;

  const AddingPage({Key? key, required this.addIdea}) : super(key: key);

  @override
  _AddingPageState createState() => _AddingPageState();
}

class _AddingPageState extends State<AddingPage> {
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _authorController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submitForm() {
    final String author = _authorController.text.trim();
    final String title = _titleController.text.trim();
    final String description = _descriptionController.text.trim();

    if (author.isNotEmpty && title.isNotEmpty && description.isNotEmpty) {
      final IdeaModel idea = IdeaModel(
          author: author, title: title, description: description, id: '');
      widget.addIdea(idea);

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Idea'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _authorController,
              decoration: const InputDecoration(
                labelText: 'Author',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Add Idea'),
            ),
          ],
        ),
      ),
    );
  }
}
