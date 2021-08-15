import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenth_project/models/task.dart';
import 'package:tenth_project/models/task_data.dart';

String newTaskName = 'empty task';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color theColor = Color(0xff37474f);
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.blueGrey[800]),
            ),
            TextField(
              cursorColor: Colors.blueGrey[800],
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: theColor),
                ),
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskName = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(Task(name: newTaskName, isDone: false));
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15.0)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueGrey[800])),
            )
          ],
        ),
      ),
    );
  }
}
