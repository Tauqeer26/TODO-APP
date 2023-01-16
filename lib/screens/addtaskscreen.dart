import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {

    String? newTasktitle='';
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Text(
              "ADD TASK",
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTasktitle=newTask;
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 200,
              color: Colors.lightBlueAccent,
              child: TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  //print(newTasktitle);
                  Provider.of<TaskData>(context,listen:false).addtask(newTasktitle!);
                  Navigator.pop(context);
                },
                child: Text(
                  "ADD",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
