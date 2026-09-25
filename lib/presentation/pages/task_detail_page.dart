import 'package:flutter/material.dart';
import 'package:user_todo/core/theme/app_colors.dart';
import 'package:user_todo/models/task.dart';

import '../widgets/task_detail_page/task_detail_page.dart';

class TaskDetailPage extends StatefulWidget {
  final Task task;

  const TaskDetailPage({super.key, required this.task});

  @override
  State<TaskDetailPage> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailPage> {
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
