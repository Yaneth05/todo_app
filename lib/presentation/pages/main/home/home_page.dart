import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/presentation/presentation.dart';

import '../../../providers/providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Consumer<TasksProvider>(
      builder: (context, homeProvider, child) {
        final pendingTasks = homeProvider.getPendingTasks();
        final completedTasks = homeProvider.getCompletedTasks();

        return Scaffold(
          backgroundColor: AppColors.canvas,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                HomeHeader(
                  taskTotal: homeProvider.tasks.length,
                  completedTaskTotal: completedTasks.length,
                ),
                SizedBox(height: 35),
                if (homeProvider.tasks.isNotEmpty) ...[
                  if (pendingTasks.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text("PENDIENTES", style: AppText.label),
                          Spacer(),
                          Text(
                            pendingTasks.length.toString(),
                            style: AppText.label,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    const Divider(height: 1, color: AppColors.divider),
                    SizedBox(
                      height: size.height * 0.35,
                      child: PendingTasks(tasks: pendingTasks),
                    ),
                    SizedBox(height: 10),
                  ],

                  if (completedTasks.isNotEmpty) ...[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: CompletedTasks(completedTasks: completedTasks),
                    ),
                  ],
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
      },
    );
  }
}
