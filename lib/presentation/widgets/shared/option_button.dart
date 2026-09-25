import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';

class OptionButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const OptionButton({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected ? AppColors.inkSolid : Colors.transparent,
        foregroundColor: isSelected ? Colors.white : AppColors.textSecondary,
        side: BorderSide(color: AppColors.border),
      ),
      child: Text(label),
    );
  }
}
