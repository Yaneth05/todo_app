import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/presentation/presentation.dart';

class TaskNewPage extends StatelessWidget {
  const TaskNewPage({super.key});

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
              TaskFormHeader(tituloEncabezado: "NUEVA TAREA"),
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
              TaskNewNote(),
            ],
          ),
        ),
      ),
    );
  }
}
