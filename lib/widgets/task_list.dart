import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenth_project/models/task_data.dart';
import 'package:tenth_project/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          child: TaskTile(
            taskTitle: Provider.of<TaskData>(context).getTaskTitle(index),
            isChecked: Provider.of<TaskData>(context).isTaskDone(index),
            checkBoxCallBack: (checkBoxState) {
              if (checkBoxState != null) {
                setState(() {
                  Provider.of<TaskData>(context, listen: false)
                      .getTask(index)
                      .toggleDone();
                });
              }
            },
          ),
          onLongPress: () {
            print('Long press');
            Provider.of<TaskData>(context, listen: false).removeTask(
                Provider.of<TaskData>(context, listen: false).getTask(index));
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).getTasksLength(),
    );
  }
}
