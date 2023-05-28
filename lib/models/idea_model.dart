class IdeaModel {
  final String id;
  final String author;
  final String title;
  final String description;

  IdeaModel({
    required this.id,
    required this.author,
    required this.title,
    required this.description,
  });

  @override
  String toString() {
    return 'IdeaModel { id: $id, author: $author, title: $title, description: $description }';
  }
}
