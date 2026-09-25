import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';

class DateButton extends StatelessWidget {
  final String texto;
  final bool seleccionado;

  const DateButton({
    super.key,
    required this.texto,
    required this.seleccionado,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: seleccionado ? AppColors.inkSolid : Colors.transparent,
        foregroundColor: seleccionado ? Colors.white : AppColors.textSecondary,
        side: BorderSide(color: AppColors.border),
      ),
      child: Text(texto),
    );
  }
}
