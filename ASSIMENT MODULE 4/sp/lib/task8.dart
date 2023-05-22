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

class TaskListPage extends StatefulWidget {
  @override
  _TaskListPageState createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
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
                decoration: task.isCompleted ? TextDecoration.lineThrough : null,
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
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Task Options'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: Text('Complete the Task'),
                onPressed: () {
                  completeTask(task);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void completeTask(Task task) {
    setState(() {
      task.isCompleted = true;
    });
  }
}

