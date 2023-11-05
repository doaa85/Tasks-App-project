import 'package:flutter/material.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class TODashBoard extends StatelessWidget {
  const TODashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, AppViewModel, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'TO DASH BOARD',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          leading: TextButton(
            child: const Text(
              'Exit',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: [
            Expanded(
              child: Container(
                  child: Card(
                color: Colors.orange,
                child: Center(
                  child: FittedBox(
                    child: Text("Total Tasks",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppViewModel.clrlvl3,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
            ),
            Expanded(
              child: Container(
                  child: Card(
                color: Colors.orange,
                child: Center(
                  child: FittedBox(
                    child: Text("${AppViewModel.numTasks}",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppViewModel.clrlvl3,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
            ),
            Expanded(
              child: Container(
                  child: Card(
                color: Colors.orange,
                child: Center(
                  child: FittedBox(
                    child: Text("Completed Tasks",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppViewModel.clrlvl3,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
            ),
            Expanded(
              child: Container(
                  child: Card(
                color: Colors.orange,
                child: Center(
                  child: FittedBox(
                    child: Text("${AppViewModel.completedTasks}",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppViewModel.clrlvl3,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
            ),
            Expanded(
              child: Container(
                  child: Card(
                color: Colors.orange,
                child: Center(
                  child: FittedBox(
                    child: Text("Non-Completed Tasks",
                        style: TextStyle(
                            fontSize: 40,
                            color: AppViewModel.clrlvl3,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
            ),
            Expanded(
              child: Container(
                  child: Card(
                color: Colors.orange,
                child: Center(
                  child: FittedBox(
                    child: Text("${AppViewModel.nonCompletedTasks}",
                        style: TextStyle(
                            fontSize: 28,
                            color: AppViewModel.clrlvl3,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              )),
            ),
          ],
        ),
      );
    });
  }
}
