import 'package:flutter/material.dart';
import 'package:my_project/views/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login_page()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.orange,
            ),
            Container(
              child: Text('WELCOME'),
            ),
          ],
        ),
      ),
    );
  }
}
