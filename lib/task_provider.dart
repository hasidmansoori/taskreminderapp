import 'package:flutter/material.dart';
import 'task_model.dart';

class TaskProvider with ChangeNotifier {
  List<TaskModel> _tasks = [];

  // Get the list of tasks
  List<TaskModel> get tasks => _tasks;

  // Add a task to the list
  void addTask(TaskModel task) {
    _tasks.add(task);
    notifyListeners();
  }

  // Update a task in the list
  void updateTask(TaskModel task) {
    int index = _tasks.indexOf(task);
    if (index != -1) {
      _tasks[index] = task;
      notifyListeners();
    }
  }

  // Delete a task from the list
  void deleteTask(TaskModel task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
