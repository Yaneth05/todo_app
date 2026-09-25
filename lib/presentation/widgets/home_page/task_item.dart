import 'package:flutter/material.dart';
import 'package:user_todo/core/theme/app_colors.dart';
import 'package:user_todo/core/theme/app_text.dart';
import 'package:user_todo/models/task.dart';

class TaskItem extends StatelessWidget {
  final Task tasks;
  const TaskItem({super.key, required this.tasks});

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
            child: Transform.scale(
              scale: 1.3,
              child: Checkbox(
                value: false,
                onChanged: (_) {},
                shape: const CircleBorder(),
                side: BorderSide(color: AppColors.textTertiary, width: 1),
                activeColor: AppColors.accent,
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tasks.title, style: AppText.taskRow),
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
                  Text(tasks.date, style: AppText.meta),

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

                  Text(tasks.priority, style: AppText.meta),
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
