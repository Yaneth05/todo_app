import 'package:flutter/material.dart';
import 'package:user_todo/enums/task_status.dart';

import '../../models/models.dart';

class TasksProvider extends ChangeNotifier {
  TaskDate selectDate = TaskDate.hoy;
  TaskPriority selectPriority = TaskPriority.media;
  String nuevoTitulo = "";
  String newNota = "";
  final List<Task> tasks = [
    Task(
      id: 1,
      title: 'Cerrar el brief del rediseño',
      date: TaskDate.hoy,
      priority: TaskPriority.alta,
      note: "Incluir alcance, entregables y fechas antes del jueves.",
      status: TaskStatus.pending,
    ),
    Task(
      id: 2,
      title: 'Llamar a la clínica',
      date: TaskDate.hoy,
      priority: TaskPriority.media,
      note: "",
      status: TaskStatus.completed,
    ),
    Task(
      id: 3,
      title: 'Revisar propuesta de Marta',
      date: TaskDate.manana,
      priority: TaskPriority.media,
      note: "Pendiente comentar la sección de precios.",
      status: TaskStatus.pending,
    ),
    Task(
      id: 4,
      title: 'Comprar café y filtros',
      date: TaskDate.estaSemana,
      priority: TaskPriority.baja,
      note: "",
      status: TaskStatus.pending,
    ),
    Task(
      id: 5,
      title: 'Pagar el hosting',
      date: TaskDate.hoy,
      priority: TaskPriority.alta,
      note: "",
      status: TaskStatus.pending,
    ),
    Task(
      id: 6,
      title: 'Enviar factura de agosto',
      date: TaskDate.sinFecha,
      priority: TaskPriority.baja,
      note: "",
      status: TaskStatus.completed,
    ),
  ];

  void addTask() {
    final newTask = Task(
      id: tasks.length + 1,
      title: nuevoTitulo,
      date: selectDate,
      priority: selectPriority,
      note: newNota,
      status: TaskStatus.pending,
    );

    tasks.add(newTask);
    resetFormTask();
    notifyListeners();
  }

  void deleteTask(int taskId) {
    tasks.removeWhere((task) => task.id == taskId);
    notifyListeners();
  }

  void resetFormTask() {
    selectDate = TaskDate.hoy;
    selectPriority = TaskPriority.media;
    nuevoTitulo = "";
    newNota = "";
  }

  void updateTask(int taskId) {
    final index = tasks.indexWhere((task) => task.id == taskId);

    if (index == -1) return;

    final updatedTask = tasks[index].copyWith(
      title: nuevoTitulo,
      date: selectDate,
      priority: selectPriority,
      note: newNota,
    );

    tasks[index] = updatedTask;

    resetFormTask();
    notifyListeners();
  }

  Task taskDetail(int taskId) {
    return tasks.firstWhere((task) => task.id == taskId);
  }

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

  void changePriority(TaskPriority priority) {
    selectPriority = priority;
    notifyListeners();
    // print(selectPriority);
  }

  void changeDate(TaskDate date) {
    selectDate = date;
    notifyListeners();
    //print(selectDate);
  }

  void capturarTitulo(String title) {
    nuevoTitulo = title;
    notifyListeners();
    //print(nuevoTitulo);
  }

  void capturarNota(String note) {
    newNota = note;
    notifyListeners();
    //print(nuevaNota);
  }

  String getDateLabel(TaskDate date) {
    switch (date) {
      case TaskDate.hoy:
        return "Hoy";
      case TaskDate.manana:
        return "Mañana";
      case TaskDate.estaSemana:
        return "Esta semana";
      case TaskDate.sinFecha:
        return "Sin fecha";
    }
  }

  String getPriorityLabel(TaskPriority priority) {
    switch (priority) {
      case TaskPriority.baja:
        return "Baja";
      case TaskPriority.media:
        return "Media";
      case TaskPriority.alta:
        return "Alta";
    }
  }

  void inicializarEstado(Task task) {
    nuevoTitulo = task.title;
    selectDate = task.date;
    selectPriority = task.priority;
    newNota = task.note;
    // notifyListeners();
  }
}
