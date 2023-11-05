import 'package:flutter/material.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:my_project/views/Edit_task_bottomsheet.dart';
import 'package:my_project/views/delete_task_bottomsheet.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, AppViewModel, child) {
      return Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView.separated(
              padding: const EdgeInsets.all(8),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 15,
                );
              },
              itemCount: AppViewModel.numTasks,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppViewModel.clrlvl1),
                  child: Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                                width: 2, color: AppViewModel.clrlvl3),
                          ),
                          onChanged: (bool? value) {
                            AppViewModel.setTaskValue(index, value!);
                          },
                          value: AppViewModel.getTaskvalue(index)),
                      Text(
                        AppViewModel.getTaskTitle(index),
                        style: TextStyle(
                            fontSize: 20,
                            color: AppViewModel.clrlvl4,
                            fontWeight: FontWeight.w500),
                      ),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                              onTap: () {
                                AppViewModel.bottumSheetBuilder(
                                    DeleteBottomSheet(index: index), context);
                              },
                              child: Icon(
                                Icons.delete,
                                color: AppViewModel.clrlvl3,
                                size: 30,
                              ))),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              AppViewModel.bottumSheetBuilder(
                                  SettingsBottomSheet(
                                    value: AppViewModel.getTaskTitle(index),
                                    index: index,
                                  ),
                                  context);
                            },
                            child: Icon(
                              Icons.edit,
                              color: AppViewModel.clrlvl3,
                              size: 30,
                            ),
                          )),
                    ],
                  ),
                );
              }));
    });
  }
}
