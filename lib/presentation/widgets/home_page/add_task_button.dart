import 'package:flutter/material.dart';
import 'package:user_todo/core/theme/app_colors.dart';

class AddTaskButton extends StatelessWidget {
  final VoidCallback onPressed;
  const AddTaskButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.accent,
      foregroundColor: AppColors.onAccent,
      elevation: 0,
      shape: const CircleBorder(),
      child: const Icon(Icons.add, size: 28),
    );
  }
}
