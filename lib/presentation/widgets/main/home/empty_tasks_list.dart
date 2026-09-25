import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';

class EmptyTasks extends StatelessWidget {
  const EmptyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 40),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFFD5CCC0), width: 1.5),
              ),
            ),

            SizedBox(height: 14),
            Text(
              "Sin tareas",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 14),
            Text(
              "Toca el botón + para escribir la primera. Nada más, nada menos.",
              style: TextStyle(fontSize: 20, color: AppColors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
