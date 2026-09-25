import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';

class TaskFormHeader extends StatelessWidget {
  final String? texto;
  final String tituloEncabezado;

  const TaskFormHeader({super.key, this.texto, required this.tituloEncabezado});

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

            Text(tituloEncabezado, style: AppText.label),

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
          controller: TextEditingController(text: texto),
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
