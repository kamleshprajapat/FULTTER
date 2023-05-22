import 'package:flutter/material.dart';

class Task {
  final String name;
  final String description;
  final DateTime dateTime;
  final String priority;
  bool isCompleted;

  Task({
    required this.name,
    required this.description,
    required this.dateTime,
    required this.priority,
    this.isCompleted = false,
  });
}

class TaskListPage_0 extends StatefulWidget {
  @override
  _TaskListPage_0State createState() => _TaskListPage_0State();
}

class _TaskListPage_0State extends State<TaskListPage_0> {
  List<Task> tasks = [
    Task(
      name: 'Task 1',
      description: 'Description 1',
      dateTime: DateTime(2023, 5, 20, 10, 0),
      priority: 'High',
    ),
    Task(
      name: 'Task 2',
      description: 'Description 2',
      dateTime: DateTime(2023, 5, 22, 14, 30),
      priority: 'Medium',
    ),
    Task(
      name: 'Task 3',
      description: 'Description 3',
      dateTime: DateTime(2023, 5, 21, 8, 0),
      priority: 'Low',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          Task task = tasks[index];
          Color color;

          // Determine task color based on priority
          if (task.priority == 'High') {
            color = Colors.red;
          } else if (task.priority == 'Medium') {
            color = Colors.blue;
          } else {
            color = Colors.green;
          }

          // Determine if task is due
          if (task.dateTime.isBefore(DateTime.now())) {
            color = Colors.blue;
          }

          // Determine if task is completed
          if (task.isCompleted) {
            color = Colors.grey;
          }

          return ListTile(
            title: Text(
              task.name,
              style: TextStyle(
                color: color,
                decoration:
                    task.isCompleted ? TextDecoration.lineThrough : null,
              ),
            ),
            subtitle: Text(task.description),
            onTap: () {
              // Open context menu on task item
              showTaskContextMenu(task);
            },
          );
        },
      ),
    );
  }

  void showTaskContextMenu(Task task) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
                onTap: () {
                  editTask(task);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.visibility),
                title: Text('View'),
                onTap: () {
                  viewTask(task);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
                onTap: () {
                  deleteTask(task);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void editTask(Task task) {
    // Perform edit operation here
    print('Editing task: ${task.name}');
  }

  void viewTask(Task task) {
    // Perform view operation here
    print('Viewing task: ${task.name}');
  }
  
  void deleteTask(Task task) {}
}
