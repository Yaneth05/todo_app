import 'package:flutter/material.dart';
import 'package:user_todo/core/theme/app_colors.dart';
import 'package:user_todo/core/theme/app_text.dart';

class TaskNewNote extends StatelessWidget {
  const TaskNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 5),
          child: Text("NOTA", style: AppText.meta),
        ),
        SizedBox(
          width: double.infinity,

          child: TextField(
            maxLines: 4,
            decoration: InputDecoration(
              filled: true,
              hintText: "Detalles opcionales...",
              hintStyle: AppText.support,
              fillColor: const Color(0xFFFFFDFA),
              contentPadding: const EdgeInsets.all(14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: AppColors.border),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: AppColors.inkSolid),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
