import 'package:flutter/material.dart';
import 'package:user_todo/enums/task_status.dart';

import '../../models/models.dart';

class HomeProvider extends ChangeNotifier {
  final List<Task> tasks = [
    Task(
      id: 1,
      title: 'Cerrar el brief del rediseño',
      date: 'Hoy',
      priority: 'Alta',
      status: TaskStatus.pending,
    ),
    Task(
      id: 2,
      title: 'Llamar a la clínica',
      date: 'Hoy',
      priority: 'Media',
      status: TaskStatus.completed,
    ),
    Task(
      id: 3,
      title: 'Revisar propuesta de Marta',
      date: 'Mañana',
      priority: 'Media',
      status: TaskStatus.pending,
    ),
    Task(
      id: 4,
      title: 'Comprar café y filtros',
      date: 'Esta Semana',
      priority: 'Baja',
      status: TaskStatus.pending,
    ),
    Task(
      id: 5,
      title: 'Pagar el hosting',
      date: 'Hoy',
      priority: 'Alta',
      status: TaskStatus.pending,
    ),
    Task(
      id: 6,
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

  void completeTaskClicked(Task task) {
    // .copyWith(pro)
    final updatedTask = task.copyWith(status: TaskStatus.completed);

    tasks.removeWhere((task) => task.id == updatedTask.id);
    tasks.add(updatedTask);
    notifyListeners();

    // cambiar de status a la task que el user le dio click
    // eliminar de la lista la tarea donde el id de la task sea igual ai id de la task que le dio click el user
    // insertar a la lista la task que le dio click el user
    // notificar
  }

  void pendingTaskClicked(Task task) {
    // .copyWith(pro)
    final updatedTask = task.copyWith(status: TaskStatus.pending);

    tasks.removeWhere((task) => task.id == updatedTask.id);
    tasks.add(updatedTask);
    notifyListeners();
  }
}
