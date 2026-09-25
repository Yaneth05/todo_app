import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';

class InfoTask extends StatelessWidget {
  final Task task;
  const InfoTask({super.key, required this.task});

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
                Text(task.date),
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
                        color: getPriorityColor(task.priority),

                        border: Border.all(color: AppColors.textTertiary),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(task.priority),
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
        Text("Pendiente comentar la sección de precios."),
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
