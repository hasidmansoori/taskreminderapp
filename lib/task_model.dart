class TaskModel {
  final String title;
  final String description;
  final DateTime reminderTime;
  bool isCompleted;

  TaskModel({
    required this.title,
    required this.description,
    required this.reminderTime,
    this.isCompleted = false, // Default value for isCompleted
  });
}
