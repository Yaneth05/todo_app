import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/presentation/presentation.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

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
              TaskFormHeader(title: "NUEVA TAREA"),
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
              AddTaskNote(),
            ],
          ),
        ),
      ),
    );
  }
}
