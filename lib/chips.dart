import 'package:flutter/material.dart';

class Chip_Slots extends StatefulWidget {
  const Chip_Slots({super.key});

  @override
  State<Chip_Slots> createState() => _Chip_SlotsState();
}

class _Chip_SlotsState extends State<Chip_Slots> {
  final TextEditingController _controller = TextEditingController();
  List<String> skills = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add your skills"),
        ),
    );
  }
}
