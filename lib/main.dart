import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/pages/main/add_task/add_task_page.dart';
import 'package:user_todo/presentation/pages/main/edit_task/edit_task.dart';
import 'package:user_todo/presentation/pages/main/home/home_page.dart';
import 'package:user_todo/presentation/pages/main/task_details/task_details.dart';

import 'presentation/providers/tasks_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksProvider(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/add-task': (context) => const AddTaskPage(),

          '/edit-task': (context) => EditTaskPage(
            task: ModalRoute.of(context)!.settings.arguments as Task,
          ),
          '/detail-task': (context) => TaskDetailsPage(
            task: ModalRoute.of(context)!.settings.arguments as Task,
          ),
        },
      ),
    );
  }
}
