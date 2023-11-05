import 'package:flutter/material.dart';
import 'package:my_project/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hintText, labelText;
  IconButton? ico;
  bool hidden = false;

  Function(String)? onChange;
  String? Function(String?)? validate;
  CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.hidden = false,
    this.ico,
    this.onChange,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, AppViewModel, child) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          validator: validate,
          obscureText: hidden,
          onChanged: onChange,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            label: Text(
              labelText,
              style: const TextStyle(color: Colors.white),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            suffixIcon: ico,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    });
  }
}
