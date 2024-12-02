import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp_025/screens/home/home.dart';
import 'package:todoapp_025/widgets/appcolors.dart';
import 'package:todoapp_025/widgets/button.dart';
import 'package:todoapp_025/widgets/textfromfield.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  final double height = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details "),
        centerTitle: true,
        // backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          children: [
            BuildTextFormField(
              controller: nameController,
              labelText: const Text('Enter Full name'),
              hintText: 'Wiil Jackson',
            ),
            SizedBox(
              height: height,
            ),
            BuildTextFormField(
              controller: emailController,
              labelText: const Text('Enter email id '),
              hintText: 'xyz@gamil.com',
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: height,
            ),
            BuildTextFormField(
                controller: userNameController,
                labelText: const Text('Enter Username')),
            SizedBox(
              height: height,
            ),
            MyButton(
                icon: const Icon(
                  FontAwesomeIcons.plus,
                  color: AppColors.whiteColor,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                })
          ],
        ),
      ),
    );
  }
}
