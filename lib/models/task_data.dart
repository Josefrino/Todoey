import 'package:flutter/material.dart';
import 'package:tenth_project/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Run away', isDone: false),
  ];

  int getTasksLength() {
    return _tasks.length;
  }

  List<Task> getTaskList() {
    return _tasks;
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  String getTaskTitle(int i) {
    return _tasks[i].name;
  }

  bool isTaskDone(int i) {
    return _tasks[i].isDone;
  }

  Task getTask(int i) {
    return _tasks[i];
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
