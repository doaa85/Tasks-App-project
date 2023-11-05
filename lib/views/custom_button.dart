import 'package:flutter/material.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key}) : super(key: key);
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, AppViewModel, child) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 50,
        child: const Center(
          child: Text('Login'),
        ),
      );
    });
  }
}
