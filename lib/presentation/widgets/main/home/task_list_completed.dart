import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';

class TaskListCompleted extends StatelessWidget {
  final Task tasksCompleted;
  const TaskListCompleted({super.key, required this.tasksCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 26,
            width: 30,
            child: Transform.scale(
              scale: 1.3,
              child: Checkbox(
                value: true,
                onChanged: (_) {},
                shape: const CircleBorder(),
                side: BorderSide(color: AppColors.textTertiary, width: 1),
                activeColor: AppColors.accent,
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
          SizedBox(width: 12),

          Text(tasksCompleted.title, style: AppText.taskRowDone),
        ],
      ),
    );
  }
}
