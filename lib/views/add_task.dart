import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:my_project/views/add_task_bottomsheet.dart';
import 'package:provider/provider.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, AppViewModel, child) {
        return SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppViewModel.clrlvl3,
                foregroundColor: AppViewModel.clrlvl1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              HapticFeedback.heavyImpact();
              AppViewModel.bottumSheetBuilder(AddTaskBottomSheet(), context);
            },
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
