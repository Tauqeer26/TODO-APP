import 'package:flutter/material.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/screens/tasksscreen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      
      create: (context)=>TaskData(),
      child: MaterialApp(
        title: "Todoey",
        home: Taskscreen(),
      ),
    );
  }
}