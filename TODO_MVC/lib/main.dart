import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './controllers/todo_controller.dart';
import './views/todo_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TodoController(),
      child: MaterialApp(
        title: 'To-Do App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: TodoView(),
      ),
    );
  }
}
