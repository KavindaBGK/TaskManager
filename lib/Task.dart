class Task {
  int? id;
  String title;
  String description;
  bool isCompleted;

  Task(
      {this.id,
      required this.title,
      required this.description,
      this.isCompleted = false});

  // Convert a Task into a Map. The keys must match the column names in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  // Convert a Map into a Task.
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}
