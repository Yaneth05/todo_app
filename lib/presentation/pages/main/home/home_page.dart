import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hasTasks = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Task> tasks = [
      Task(
        title: 'Cerrar el brief del rediseño',
        date: 'Hoy',
        priority: 'Alta',
      ),
      Task(title: 'Llamar a la clínica', date: 'Hoy', priority: 'Media'),
      Task(
        title: 'Revisar propuesta de Marta',
        date: 'Mañana',
        priority: 'Media',
      ),
      Task(
        title: 'Comprar café y filtros',
        date: 'Esta Semana',
        priority: 'Baja',
      ),
      Task(title: 'Pagar el hosting', date: 'Hoy', priority: 'Alta'),
      Task(
        title: 'Enviar factura de agosto',
        date: 'Sin fecha',
        priority: 'Baja',
      ),
    ];

    final List<Task> completedTasks = [
      Task(title: 'Pagar el hosting', date: 'Hoy', priority: 'Alta'),
      Task(
        title: 'Enviar factura de agosto',
        date: 'Sin fecha',
        priority: 'Baja',
      ),
    ];
    return Scaffold(
      backgroundColor: AppColors.canvas,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            HomeHeader(),
            SizedBox(height: 35),
            if (hasTasks) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("PENDIENTES", style: AppText.label),
                    Spacer(),
                    Text("4", style: AppText.label),
                  ],
                ),
              ),
              SizedBox(height: 10),
              const Divider(height: 1, color: AppColors.divider),
              SizedBox(
                height: size.height * 0.35,
                child: PendingTasks(tasks: tasks),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CompletedTasks(completedTasks: completedTasks),
              ),
              SizedBox(height: 10),
            ] else ...[
              EmptyTasksList(),
            ],
          ],
        ),
      ),

      floatingActionButton: AddTaskButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskPage()),
          );
        },
      ),
    );
  }
}
