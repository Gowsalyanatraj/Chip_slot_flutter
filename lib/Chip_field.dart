import 'package:flutter/material.dart';

class Chip_field extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onSubmitted;
  const Chip_field({super.key, required this.controller, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: "Add your skill",
          suffixIcon: IconButton(
              onPressed: () {
                onSubmitted(controller.text);
              },
              icon: Icon(Icons.add))),
              onFieldSubmitted: onSubmitted,
    );
  }
}
