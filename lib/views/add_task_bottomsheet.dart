
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:my_project/models/tasks.dart';



class AddTaskBottomSheet extends StatefulWidget {
 const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  final TextEditingController taskEntryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, appViewModel, child) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: 80,
            child: Center(
              child: SizedBox(
                height: 40,
                width: 250,
                child: TextField(
                  onSubmitted: (value) {
                    if (taskEntryController.text.isNotEmpty) {
                      appViewModel
                          .addTask(Tasks(taskEntryController.text, false));
                      print("task Added ${taskEntryController.text}");
                      taskEntryController.clear();
                    }
                    Navigator.of(context).pop();
                  },
                  autofocus: true,
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: appViewModel.clrlvl4,
                  controller: taskEntryController,
                  style: TextStyle(
                      color: appViewModel.clrlvl4, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      contentPadding:const  EdgeInsets.only(bottom: 10),
                      fillColor: appViewModel.clrlvl2,
                      filled: true,
                      hintText: "New Task",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                             const BorderSide(width: 0, style: BorderStyle.none))),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}