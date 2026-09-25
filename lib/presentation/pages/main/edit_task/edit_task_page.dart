import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

class EditTaskPage extends StatelessWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});

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
              TaskFormHeader(title: "EDITAR TAREA", taskTitle: task.title),
              // SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Text("FECHA", style: AppText.meta),
              ),

              Wrap(
                spacing: 8,
                children: [
                  OptionButton(label: "Hoy", isSelected: false),

                  OptionButton(label: "Mañana", isSelected: true),

                  OptionButton(label: "Esta semana", isSelected: false),

                  OptionButton(label: "Sin fecha", isSelected: false),
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
                  OptionButton(label: "Baja", isSelected: false),

                  OptionButton(label: "Media", isSelected: true),

                  OptionButton(label: "Alta", isSelected: false),
                ],
              ),
              EditTaskNote(),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: DeleteTaskButton(task: task),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
