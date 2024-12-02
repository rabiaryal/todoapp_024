import 'package:flutter/material.dart';

class BuildTextFormField extends StatelessWidget {
   BuildTextFormField({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),  

  
    );
  }
}
