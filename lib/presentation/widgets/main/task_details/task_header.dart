import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';

class TaskHeader extends StatelessWidget {
  final Task task;
  final bool esCompletada;

  const TaskHeader({super.key, required this.task, required this.esCompletada});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.textSecondary,
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [Icon(Icons.chevron_left), Text("Tareas")],
          ),
        ),

        SizedBox(height: 34),

        Text(!esCompletada ? "PENDIENTE" : "COMPLETADA", style: AppText.label),

        SizedBox(height: 10),

        Text(
          task.title,
          style: !esCompletada
              ? AppText.detailTitle
              : AppText.detailTitle.copyWith(
                  color: AppColors.doneText,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: const Color(0xFFC9C1B5),
                ),
        ),
      ],
    );
  }
}
