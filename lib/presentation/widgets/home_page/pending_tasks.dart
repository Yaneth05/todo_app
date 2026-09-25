import 'package:flutter/material.dart';
import 'package:user_todo/core/theme/app_colors.dart';
import 'package:user_todo/models/task.dart';
import 'package:user_todo/presentation/pages/task_detail_page.dart';

import 'home.dart';

class PendingTasks extends StatelessWidget {
  final List<Task> tasks;

  const PendingTasks({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) {
        return Divider(height: 1, color: AppColors.divider);
      },
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];

        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskDetailPage(task: task),
                  ),
                );
              },
              child: TaskItem(tasks: task),
            ),
          ],
        );
      },
    );
  }
}
