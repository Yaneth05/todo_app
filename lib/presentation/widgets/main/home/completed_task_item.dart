import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

class CompletedTaskItem extends StatelessWidget {
  final Task task;
  const CompletedTaskItem({super.key, required this.task});

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
            child: Center(child: TaskCheckbox(value: true, onChanged: (_) {})),
          ),
          SizedBox(width: 12),

          Text(task.title, style: AppText.taskRowDone),
        ],
      ),
    );
  }
}
