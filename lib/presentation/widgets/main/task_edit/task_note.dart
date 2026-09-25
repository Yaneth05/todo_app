import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';

class TaskNote extends StatelessWidget {
  const TaskNote({super.key});

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
            controller: TextEditingController(
              text: "Pendiente comentar la sección de precios.",
            ),
            maxLines: 4,
            decoration: InputDecoration(
              filled: true,
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
