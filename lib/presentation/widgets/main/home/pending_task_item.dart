import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

class PendingTaskItem extends StatelessWidget {
  final Task task;
  const PendingTaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 26,
            width: 30,
            child: Center(child: TaskCheckbox(value: false, onChanged: (_) {})),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(task.title, style: AppText.taskRow),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.prioHigh,
                      border: Border.all(color: AppColors.textTertiary),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(task.date, style: AppText.meta),

                  const SizedBox(width: 8),

                  Container(
                    width: 3,
                    height: 3,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.doneText,
                    ),
                  ),

                  const SizedBox(width: 8),

                  Text(task.priority, style: AppText.meta),
                ],
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.chevron_right, color: AppColors.textTertiary, size: 11),
        ],
      ),
    );
  }
}
