import 'package:flutter/material.dart';
import 'package:user_todo/enums/task_status.dart';

import '../../models/models.dart';

class HomeProvider extends ChangeNotifier {
  final List<Task> tasks = [
    Task(
      title: 'Cerrar el brief del rediseño',
      date: 'Hoy',
      priority: 'Alta',
      status: TaskStatus.pending,
    ),
    Task(
      title: 'Llamar a la clínica',
      date: 'Hoy',
      priority: 'Media',
      status: TaskStatus.completed,
    ),
    Task(
      title: 'Revisar propuesta de Marta',
      date: 'Mañana',
      priority: 'Media',
      status: TaskStatus.pending,
    ),
    Task(
      title: 'Comprar café y filtros',
      date: 'Esta Semana',
      priority: 'Baja',
      status: TaskStatus.pending,
    ),
    Task(
      title: 'Pagar el hosting',
      date: 'Hoy',
      priority: 'Alta',
      status: TaskStatus.pending,
    ),
    Task(
      title: 'Enviar factura de agosto',
      date: 'Sin fecha',
      priority: 'Baja',
      status: TaskStatus.completed,
    ),
  ];

  List<Task> getPendingTasks() {
    return tasks.where((task) => task.status == TaskStatus.pending).toList();
  }

  List<Task> getCompletedTasks() {
    return tasks.where((task) => task.status == TaskStatus.completed).toList();
  }
}
