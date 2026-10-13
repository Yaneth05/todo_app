import '../enums/enums.dart';

class Task {
  final int id;
  final String title;
  final TaskDate date;
  final TaskPriority priority;
  final String note;
  final TaskStatus status;

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.priority,
    required this.note,
    required this.status,
  });

  Task copyWith({
    String? title,
    TaskDate? date,
    TaskPriority? priority,
    String? note,
    TaskStatus? status,
  }) {
    return Task(
      id: id,
      title: title ?? this.title,
      date: date ?? this.date,
      priority: priority ?? this.priority,
      note: note ?? this.note,
      status: status ?? this.status,
    );
  }
}
