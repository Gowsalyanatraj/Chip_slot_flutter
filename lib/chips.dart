import 'package:chips/Chip_field.dart';
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip_field(
                controller: _controller,
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    addSkill(value);
                    _controller.clear();
                  }
                }),
          ),
          // Wrap(
          //   spacing: 8.0,
          //   children: skill.map(skills){
          //     return Chip();
          //   }
          // )
        ],
      ),
    );
  }

  void addSkill(String Skill) {
    setState(() {
      skills.add(skills as String);
    });
  }

  void removeSkill(String skill) {
    setState(() {
      skills.remove(skill);
    });
  }
}
