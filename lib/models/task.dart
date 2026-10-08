import '../enums/enums.dart';

class Task {
  final int id;
  final String title;
  final String date;
  final String priority;
  final TaskStatus status;

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.priority,
    required this.status,
  });
  Task copyWith({
    String? title,
    String? date,
    String? priority,
    TaskStatus? status,
  }) {
    return Task(
      id: id,
      title: title ?? this.title,
      date: date ?? this.date,
      priority: priority ?? this.priority,
      status: status ?? this.status,
    );
  }
}
