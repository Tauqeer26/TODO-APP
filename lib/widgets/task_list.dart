import 'package:flutter/material.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          return Tasktile(
              tasktitle: taskdata.tasks[index].name, 
              isChecked: taskdata.tasks[index].isDone,
              checkboxCallback:(checkboxState){
                taskdata.updatetask(taskdata.tasks[index]);
                
              },
              longpressCallback: (){
                taskdata.deletemethod(taskdata.tasks[index]);
              },
              
              );
        },
        itemCount:taskdata.taskcount,
      );
      },
      
    );
  }
}
// (
//       children: [
//         Tasktile(tasktitle: tasks[0].name,isChecked: tasks[0].isDone,),
//         Tasktile(tasktitle: tasks[1].name,isChecked: tasks[1].isDone,),
//         Tasktile(tasktitle: tasks[2].name,isChecked: tasks[2].isDone,),
//       ],
//     );