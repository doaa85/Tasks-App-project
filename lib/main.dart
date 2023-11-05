import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:my_project/views/login_page.dart';
import 'package:provider/provider.dart';
import 'package:my_project/view_model/app_view_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 5000,
            splash: Icons.task,
            nextScreen: Login_page(),
            splashTransition: SplashTransition.rotationTransition,
            backgroundColor: Colors.orange));
  }
}
