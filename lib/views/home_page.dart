import 'package:flutter/material.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:my_project/views/add_task.dart';
import 'package:my_project/views/login_page.dart';
import 'package:my_project/views/profile.dart';
import 'package:my_project/views/task_list.dart';
import 'package:my_project/views/to_dash_board.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, AppViewModel, child) {
      return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            child: const Icon(
              Icons.home,
              size: 50,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TODashBoard()));
            },
          ),
          actions: [
            const Text(
              'Welcome..Doaa',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
                child: const Icon(
                  Icons.account_circle,
                  color: Colors.black,
                  size: 50,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                })
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: TaskList(),
              flex: 7,
            ),
            Expanded(child: AddTask(), flex: 1),
            Expanded(
                child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login_page()));
              },
              child: Text(
                'EXIT',
                style: TextStyle(fontSize: 24),
              ),
            ))
          ],
        ),
      );
    });
  }
}
