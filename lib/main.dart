import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenth_project/models/task_data.dart';
import 'package:tenth_project/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        title: 'Todoey',
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
