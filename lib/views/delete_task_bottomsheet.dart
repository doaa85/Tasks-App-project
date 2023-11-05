import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:my_project/view_model/app_view_model.dart';

class DeleteBottomSheet extends StatelessWidget {
  final index;

  DeleteBottomSheet({this.index, super.key});
  final TextEditingController taskEntryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, appViewModel, child) {
        return Container(
          height: 125,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    appViewModel.deleteTask(index);
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: appViewModel.clrlvl3,
                      backgroundColor: appViewModel.clrlvl1,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Delete This")),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    appViewModel.deleteCompletedTasks();
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: appViewModel.clrlvl3,
                      backgroundColor: appViewModel.clrlvl1,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Delete Completed")),
            ],
          ),
        );
      },
    );
  }
}
