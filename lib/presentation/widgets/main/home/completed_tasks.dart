import 'package:flutter/material.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/models/models.dart';
import 'package:user_todo/presentation/presentation.dart';

class CompletedTasks extends StatefulWidget {
  final List<Task> completedTasks;
  const CompletedTasks({super.key, required this.completedTasks});

  @override
  State<CompletedTasks> createState() => _CompletedTasksPanelState();
}

class _CompletedTasksPanelState extends State<CompletedTasks> {
  bool mostrarCompletadas = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ExpansionPanelList(
      expandIconColor: AppColors.textTertiary,
      elevation: 0,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (index, isExpanded) {
        setState(() {
          mostrarCompletadas = isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          canTapOnHeader: true,

          isExpanded: mostrarCompletadas,
          backgroundColor: Colors.transparent,
          headerBuilder: (context, isExpanded) {
            return Row(
              children: [
                Text("COMPLETADAS", style: AppText.label),
                SizedBox(width: 10),
                Text("2", style: AppText.label),
              ],
            );
          },
          body: SizedBox(
            height: size.height * 0.20,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: widget.completedTasks.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const Divider(height: 1, color: AppColors.divider);
                }

                final task = widget.completedTasks[index - 1];

                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaskDetailsPage(task: task),
                          ),
                        );
                      },
                      child: TaskListCompleted(tasksCompleted: task),
                    ),
                    const Divider(height: 1, color: AppColors.divider),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
