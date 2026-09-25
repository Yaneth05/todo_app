import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';

class TaskFormHeader extends StatelessWidget {
  final String? taskTitle;
  final String title;

  const TaskFormHeader({super.key, this.taskTitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.textSecondary,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),

            Text(title, style: AppText.label),

            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.danger,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Guardar"),
            ),
          ],
        ),

        SizedBox(height: 25),

        TextField(
          controller: TextEditingController(text: taskTitle),
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
            color: AppColors.ink,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "¿Qué hay que hacer?",
            hintStyle: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w600,
              color: AppColors.doneText,
            ),
          ),
        ),

        SizedBox(height: 5),

        Divider(height: 1, color: AppColors.divider),
      ],
    );
  }
}
