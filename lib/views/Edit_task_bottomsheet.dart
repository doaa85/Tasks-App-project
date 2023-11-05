import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_project/view_model/app_view_model.dart';

class SettingsBottomSheet extends StatelessWidget {
  final value;
  final index;
  SettingsBottomSheet({this.value, this.index, super.key});

  final TextEditingController entryController = TextEditingController();

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
                    if (entryController.text.isNotEmpty) {
                      String value = entryController.text;

                      appViewModel.setnewTaskTitle(value, index);
                      entryController.clear();
                    }
                    Navigator.of(context).pop();
                  },
                  autofocus: true,
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: appViewModel.clrlvl4,
                  controller: entryController,
                  style: TextStyle(
                      color: appViewModel.clrlvl4, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 10),
                      fillColor: appViewModel.clrlvl2,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none))),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
