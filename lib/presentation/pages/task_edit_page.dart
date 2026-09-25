import 'package:flutter/material.dart';
import 'package:user_todo/core/theme/app_colors.dart';
import 'package:user_todo/core/theme/app_text.dart';
import 'package:user_todo/models/task.dart';
import 'package:user_todo/presentation/shared/show_modal_button_delete.dart';
import 'package:user_todo/presentation/shared/task_form_header.dart';

import '../widgets/task_edit_page/task_edit_page.dart';

class TaskEditPage extends StatelessWidget {
  final Task task;
  const TaskEditPage({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskFormHeader(
                tituloEncabezado: "EDITAR TAREA",
                texto: task.title,
              ),
              // SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Text("FECHA", style: AppText.meta),
              ),

              Wrap(
                spacing: 8,
                children: [
                  DateButton(texto: "Hoy", seleccionado: false),

                  DateButton(texto: "Mañana", seleccionado: true),

                  DateButton(texto: "Esta semana", seleccionado: false),

                  DateButton(texto: "Sin fecha", seleccionado: false),
                ],
              ),
              // SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 5),
                child: Text("PRIORIDAD", style: AppText.meta),
              ),
              Wrap(
                spacing: 8,
                children: [
                  DateButton(texto: "Baja", seleccionado: false),

                  DateButton(texto: "Media", seleccionado: true),

                  DateButton(texto: "Alta", seleccionado: false),
                ],
              ),
              TaskNote(),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ShowModalButtonDelete(task: task),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
