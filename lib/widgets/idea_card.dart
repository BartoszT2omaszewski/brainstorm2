import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  final String title;
  final String description;
  final String author;

  const IdeaCard(
      {super.key,
      required this.title,
      required this.description,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          // Idea card content here
          ListTile(
            title: Text(title),
            subtitle: Text(description),
            trailing: Text(author),
          ),
          ButtonBar(
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {
                  // Handle upvote button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.thumb_down),
                onPressed: () {
                  // Handle downvote button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {
                  // Handle comment button press
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
