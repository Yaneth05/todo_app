import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

class TaskDetailsPage extends StatefulWidget {
  final Task task;

  const TaskDetailsPage({super.key, required this.task});

  @override
  State<TaskDetailsPage> createState() => _TaskDetailsPageState();
}

class _TaskDetailsPageState extends State<TaskDetailsPage> {
  bool esCompletada = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: Padding(
        padding: const EdgeInsets.only(top: 72, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TaskHeader(esCompletada: esCompletada, task: widget.task),
            SizedBox(height: 25),
            Divider(height: 1, color: AppColors.divider),
            SizedBox(height: 15),
            InfoTask(task: widget.task),
            SizedBox(height: 40),
            ActionsTask(
              esCompletada: esCompletada,
              task: widget.task,
              onPressed: () {
                setState(() {
                  esCompletada = !esCompletada;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
