import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/todo_view.dart';
import 'viewmodels/todo_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoViewModel(),
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TodoView(),
      ),
    );
  }
}