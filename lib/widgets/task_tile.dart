import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool isChecked ;
  final String tasktitle;
  final Function(bool?) checkboxCallback;
  final Function() longpressCallback;

  Tasktile({required this.isChecked,required this.tasktitle,required this.checkboxCallback,required this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longpressCallback,
      title: Text(
       tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      value: isChecked,
      onChanged: checkboxCallback,
    )
    );  
  }
}
// (bool? checkboxState) {
//             setState(() {
//               isChecked = checkboxState!;
//             });
//           }



// class TaskCheck extends StatelessWidget {
//   //bool isChecked=false;
//   final bool checkboxstate;
//   final Function(bool?) togglecheck;
//   TaskCheck({required this.checkboxstate, required this.togglecheck});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkboxstate,
//       onChanged: togglecheck,
//     );
//   }
// }
