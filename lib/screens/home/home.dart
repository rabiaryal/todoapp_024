import 'package:flutter/material.dart';
import 'package:todoapp_025/screens/addtaskpage/addtaskpage.dart';
import 'package:todoapp_025/widgets/appcolors.dart';
import 'package:todoapp_025/widgets/apptextstyle.dart';
import 'package:todoapp_025/widgets/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-DO"),
        titleTextStyle: AppTextStyles.appBarTitle,
        centerTitle: true,
        backgroundColor: AppColors.appBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            )),
            MyButton(
                label: "Add",
                // icon: Icons.add,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AddTaskPage()));
                }),
          const  SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
