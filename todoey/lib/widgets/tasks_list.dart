import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/module/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
              longPressCallback: (){
                  taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
