import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/enums/enums.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

import '../../../providers/providers.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  @override
  void initState() {
    super.initState();
    context.read<TasksProvider>().inicializarEstado(widget.task);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: AppColors.canvas,
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TaskFormHeader(
                    title: "EDITAR TAREA",
                    taskTitle: provider.nuevoTitulo,
                    taskId: widget.task.id,
                  ),
                  // SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 5),
                    child: Text("FECHA", style: AppText.meta),
                  ),

                  Wrap(
                    spacing: 8,
                    children: [
                      OptionButton(
                        label: "Hoy",
                        isSelected: provider.selectDate == TaskDate.hoy,
                        onPressed: () => provider.changeDate(TaskDate.hoy),
                      ),

                      OptionButton(
                        label: "Mañana",
                        isSelected: provider.selectDate == TaskDate.manana,
                        onPressed: () => provider.changeDate(TaskDate.manana),
                      ),

                      OptionButton(
                        label: "Esta semana",
                        isSelected: provider.selectDate == TaskDate.estaSemana,
                        onPressed: () =>
                            provider.changeDate(TaskDate.estaSemana),
                      ),

                      OptionButton(
                        label: "Sin fecha",
                        isSelected: provider.selectDate == TaskDate.sinFecha,
                        onPressed: () => provider.changeDate(TaskDate.sinFecha),
                      ),
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
                      OptionButton(
                        label: "Baja",
                        isSelected:
                            provider.selectPriority == TaskPriority.baja,

                        onPressed: () =>
                            provider.changePriority(TaskPriority.baja),
                      ),

                      OptionButton(
                        label: "Media",
                        isSelected:
                            provider.selectPriority == TaskPriority.media,

                        onPressed: () =>
                            provider.changePriority(TaskPriority.media),
                      ),

                      OptionButton(
                        label: "Alta",
                        isSelected:
                            provider.selectPriority == TaskPriority.alta,

                        onPressed: () =>
                            provider.changePriority(TaskPriority.alta),
                      ),
                    ],
                  ),
                  TaskNoteInput(note: provider.newNota),
                  SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: DeleteTaskButton(task: widget.task),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
