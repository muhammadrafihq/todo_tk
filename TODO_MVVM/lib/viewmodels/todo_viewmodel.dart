import 'package:flutter/material.dart';
import '../models/todo_model.dart';

class TodoViewModel extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    final newTodo = Todo(
      title: title,
      isCompleted: false,
    );
    _todos.add(newTodo);
    notifyListeners();
  }

  void toggleCompletion(int index) {
    _todos[index].isCompleted = !_todos[index].isCompleted;
    notifyListeners();
  }

  void removeTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
