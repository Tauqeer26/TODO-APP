
import 'package:flutter/cupertino.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier{
    List<Task> tasks = [
    Task(name: "name"),
    
  ];
  int get taskcount{
    return tasks.length;
  }
  void addtask(String newtask){
    final task=Task(name: newtask);
    tasks.add(task);
    notifyListeners();
  }

  void updatetask(Task task ){
    task.toggleit(); 
    notifyListeners();
  }
  void deletemethod(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}