import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

class ActionsTask extends StatelessWidget {
  final bool esCompletada;
  final Task task;
  final VoidCallback onPressed;

  const ActionsTask({
    super.key,
    required this.esCompletada,
    required this.task,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  side: BorderSide.none,
                  backgroundColor: AppColors.accent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: onPressed,
                child: esCompletada
                    ? Text('Marcar como pendiente')
                    : Text('Marcar como hecha'),
              ),
            ),
          ],
        ),

        SizedBox(height: 10),

        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  side: const BorderSide(
                    color: AppColors.textTertiary,
                    width: 0.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskEditPage(task: task),
                    ),
                  );
                },
                child: const Text(
                  'Editar',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.inkSolid,
                  ),
                ),
              ),
            ),

            SizedBox(width: 10),
            Expanded(child: ShowModalButtonDelete(task: task)),
          ],
        ),
      ],
    );
  }
}
