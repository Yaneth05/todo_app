import '../enums/enums.dart';

class Task {
  final String title;
  final String date;
  final String priority;
  final TaskStatus status;

  Task({
    required this.title,
    required this.date,
    required this.priority,
    required this.status,
  });
}
