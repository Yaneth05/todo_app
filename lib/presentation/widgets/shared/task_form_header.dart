import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_todo/core/core.dart';

import '../../providers/providers.dart';

class TaskFormHeader extends StatefulWidget {
  final String? taskTitle;
  final String title;

  final int? taskId;

  const TaskFormHeader({
    super.key,
    this.taskTitle,
    required this.title,
    this.taskId,
  });

  @override
  State<TaskFormHeader> createState() => _TaskFormHeaderState();
}

class _TaskFormHeaderState extends State<TaskFormHeader> {
  late TextEditingController titleController;

  @override
  void initState() {
    titleController = TextEditingController(text: widget.taskTitle);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, provider, child) {
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
                    provider.resetFormTask();
                    Navigator.pop(context);
                  },
                  child: Text("Cancelar"),
                ),

                Text(widget.title, style: AppText.label),

                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.danger,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: provider.nuevoTitulo.isNotEmpty
                      ? () {
                          if (widget.taskId != null) {
                            provider.updateTask(widget.taskId!);
                          } else {
                            provider.addTask();
                          }

                          Navigator.pop(context);
                        }
                      : null,
                  child: Text("Guardar"),
                ),
              ],
            ),

            SizedBox(height: 25),

            TextField(
              controller: titleController,
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600,
                color: AppColors.ink,
              ),
              onChanged: context.read<TasksProvider>().capturarTitulo,
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
      },
    );
  }
}
