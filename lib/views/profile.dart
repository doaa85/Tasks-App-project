import 'package:flutter/material.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, AppViewModel, child) {
      return Scaffold(
          backgroundColor: Color(0xFF2B475E),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const CircleAvatar(
              radius: 112,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('image/Blue-lotus-png.png'),
              ), // circleAvatar
            ), // circleAvatar
            const Text(
              'Doaa Shaban',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ), // TextStyle
            ),
            const Text(
              'Flutter Developer ',
              style: TextStyle(
                color: Color(0xFF6C8090),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color(0xFF6C8090),
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 10,
            ),

            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xFF2B475E),
                ), // Icon
                title: Text(
                  '(+20)01114148073',
                  style: TextStyle(fontSize: 14),
                ), //Text
              ), // listTile
            ), // Card

            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 32,
                  color: Color(0xFF2B475E),
                ), // Icon
                title: Text(
                  'Doaashaban@gmail.com',
                  style: TextStyle(fontSize: 14),
                ), //Text
              ), // listTile
            ),
            TextButton(
              child: const Text(
                'Exit',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            // Card
          ]));
    });
  }
}
