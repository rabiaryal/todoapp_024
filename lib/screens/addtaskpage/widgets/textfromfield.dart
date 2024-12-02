import 'package:flutter/material.dart';
import 'package:todoapp_025/widgets/apptextstyle.dart';

class BuildTextFormField extends StatelessWidget {
  BuildTextFormField({
    super.key,
    this.noOfLine = 1,
   this.hintText ='',
   required this.controller,
    required this.labelText,
  });
  final int noOfLine;
  final Widget labelText;
  final String hintText;
 TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      minLines: noOfLine,
      maxLines: 4,
      style: AppTextStyles.inputText,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.hintText,
          label: labelText,
          labelStyle: AppTextStyles.labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
