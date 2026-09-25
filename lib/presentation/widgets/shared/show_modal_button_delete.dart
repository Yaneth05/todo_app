import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';

class ShowModalButtonDelete extends StatelessWidget {
  final Task task;
  const ShowModalButtonDelete({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15),
        side: const BorderSide(color: AppColors.textTertiary, width: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: AppColors.canvas,
          context: context,
          builder: (context) {
            return SizedBox(
              width: double.infinity,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Text(
                      "¿Eliminar esta tarea?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "<<${task.title}>>",
                      style: TextStyle(color: Color(0xFF82786E), fontSize: 16),
                    ),

                    SizedBox(height: 23),

                    SizedBox(
                      width: double.infinity,
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
                        onPressed: () {},
                        child: const Text('Eliminar'),
                      ),
                    ),

                    SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          side: const BorderSide(
                            color: AppColors.textTertiary,
                            width: 0.5,
                          ),
                          foregroundColor: AppColors.ink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancelar'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Text(
        'Eliminar',
        style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.danger),
      ),
    );
  }
}
