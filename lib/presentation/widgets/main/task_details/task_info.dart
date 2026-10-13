import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';

import '../../../providers/providers.dart';

class TaskInfo extends StatelessWidget {
  final Task task;
  const TaskInfo({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("FECHA", style: AppText.meta),
                Text(context.read<TasksProvider>().getDateLabel(task.date)),
              ],
            ),
            SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PRIORIDAD", style: AppText.meta),
                Row(
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: getPriorityColor("${task.priority}"),

                        border: Border.all(color: AppColors.textTertiary),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      context.read<TasksProvider>().getPriorityLabel(
                        task.priority,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Divider(height: 1, color: AppColors.divider),
        SizedBox(height: 20),
        Text("NOTA", style: AppText.meta),
        SizedBox(height: 10),
        Text(
          task.note.isEmpty ? "Sin nota" : task.note,
          style: task.note.isEmpty ? AppText.support : AppText.body,
        ),
      ],
    );
  }

  Color getPriorityColor(String priority) {
    if (priority == "Alta") {
      return AppColors.danger;
    } else if (priority == "Media") {
      return AppColors.accent;
    } else if (priority == "Baja") {
      return AppColors.prioLow;
    } else {
      return AppColors.ink;
    }
  }
}
