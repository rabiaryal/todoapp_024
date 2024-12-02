import 'package:flutter/material.dart';
import 'package:todoapp_025/screens/addtaskpage/widgets/textfromfield.dart';
import 'package:todoapp_025/widgets/appcolors.dart';
import 'package:todoapp_025/widgets/apptextstyle.dart';
import 'package:todoapp_025/widgets/button.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController taskController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        
          title: const Text("Add Task"),
          titleTextStyle: AppTextStyles.appBarTitle,
          centerTitle: true,
          backgroundColor: AppColors.appBarColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BuildTextFormField(
              controller: taskController,
              hintText: 'Enter the Task',
              labelText: const Text('Add Task'),
            ),
            const SizedBox(
              height: 12,
            ),
            BuildTextFormField(
              controller: descriptionController,
              noOfLine: 3,
              labelText: const Text("Add Description"),
              hintText: 'Insert the Description',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                    icon: const Icon(
                      Icons.save,
                      color: AppColors.whiteColor,
                    ),
                    width: 130,
                    label: "",
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                MyButton(
                    icon: const Icon(
                      Icons.cancel,
                      color: AppColors.whiteColor,
                    ),
                    width: 130,
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
