import 'package:flutter/material.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:my_project/views/custom_text_field.dart';
import 'package:my_project/views/custom_button.dart';
import 'package:my_project/views/home_page.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types, must_be_immutable
class Login_page extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();

  Login_page({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, AppViewModel, child) {
      return Scaffold(
          backgroundColor: const Color(0xffb30000),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Image.asset('image/splash.jpg'),
                    flex: 6,
                  ),
                  const Text(
                    ' TASKS APP',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                    onChange: (data) {},
                    hintText: "Enter your email",
                    labelText: "Email",
                    ico: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    onChange: (data) {},
                    hintText: "Enter your password",
                    labelText: "Password",
                    hidden: true,
                    ico: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'don\'t have an account? Register',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Text(
                        'home',
                        style: TextStyle(fontSize: 30),
                      ))
                ],
              ),
            ),
          ));
    });
  }
}
