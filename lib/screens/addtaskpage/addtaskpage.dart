import 'package:flutter/material.dart';
import 'package:todoapp_025/screens/addtaskpage/widgets/textformfirld.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Add Tasks"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BuildTextFormField(),
        
          ],
        ),
      ),
    );
  }
}
