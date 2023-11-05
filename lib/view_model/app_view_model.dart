import 'package:flutter/material.dart';
import 'package:my_project/models/user.dart';
import 'package:my_project/models/tasks.dart';

class AppViewModel extends ChangeNotifier {
  List<Tasks> tasks = <Tasks>[];
  User user = User('Doaa Shaban');
  Color clrlvl1 = Colors.grey.shade50;
  Color clrlvl2 = Colors.grey.shade200;
  Color clrlvl3 = Colors.grey.shade800;
  Color clrlvl4 = Colors.grey.shade900;

  User user1 = User("Doaa");

  var taskIndex;

  int get numTasks => tasks.length;

  int get nonCompletedTasks => tasks.where((task) => !task.complete).length;

  String get getUserName => user.username;

  void addTask(Tasks newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  bool getTaskvalue(int taskIndex) {
    return tasks[taskIndex].complete;
  }

  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  void setTaskValue(int taskIndex, bool TaskValue) {
    tasks[taskIndex].complete = TaskValue;
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void bottumSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }

  void deleteCompletedTasks() {
    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }

  int get completedTasks => tasks.where((task) => task.complete).length;

  // void updateUserName(String newUserName) {
  //   user.username = newUserName;
  //   notifyListeners();
  // }

  void setnewTaskTitle(String value, int index) {
    tasks[index].title = value;
    notifyListeners();
  }

  String getnewTaskTitle(String newtitle, int taskIndex) {
    return tasks[taskIndex].title;
  }
}
