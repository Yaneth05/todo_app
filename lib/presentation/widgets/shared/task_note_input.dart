import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_todo/core/core.dart';
import 'package:user_todo/presentation/providers/providers.dart';

class TaskNoteInput extends StatefulWidget {
  final String? note;

  const TaskNoteInput({super.key, this.note});

  @override
  State<TaskNoteInput> createState() => _TaskNoteInputState();
}

class _TaskNoteInputState extends State<TaskNoteInput> {
  late TextEditingController noteController;
  @override
  void initState() {
    noteController = TextEditingController(text: widget.note);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 5),
          child: Text("NOTA", style: AppText.meta),
        ),

        SizedBox(
          width: double.infinity,
          child: TextField(
            onChanged: context.read<TasksProvider>().capturarNota,
            maxLines: 4,
            controller: noteController,
            decoration: InputDecoration(
              filled: true,
              hintText: "Detalles opcionales...",
              hintStyle: AppText.support,
              fillColor: const Color(0xFFFFFDFA),
              contentPadding: const EdgeInsets.all(14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: AppColors.border),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: AppColors.inkSolid),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
