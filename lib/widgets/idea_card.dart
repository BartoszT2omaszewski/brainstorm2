import 'package:brainstorm2/models/idea_model.dart';
import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  final IdeaModel idea;

  const IdeaCard({Key? key, required this.idea}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Author: ${idea.author}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Title: ${idea.title}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(
              'Description: ${idea.description}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
