import 'package:flutter/material.dart';
import 'package:todoapp_025/widgets/apptextstyle.dart';

class BuildTextFormField extends StatefulWidget {
  const BuildTextFormField({
    super.key,
    this.noOfLine = 1,
    this.hintText = '',
    this.inputType = TextInputType.name,
    required this.controller,
    required this.labelText,
  });

  final int noOfLine;
  final Widget labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;

  @override
  _BuildTextFormFieldState createState() => _BuildTextFormFieldState();
}

class _BuildTextFormFieldState extends State<BuildTextFormField> {
  late FocusNode focusNode; // Declare FocusNode

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode(); // Initialize FocusNode
  }

  @override
  void dispose() {
    widget.controller.dispose(); // Dispose controller
    focusNode.dispose(); // Dispose focusNode
    super.dispose();
  }

  void _unfocusTextField() {
    focusNode.unfocus(); // Unfocus the text field
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _unfocusTextField, // Unfocus on tapping outside the field
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.inputType,

        focusNode: focusNode, // Attach FocusNode to the TextFormField
        minLines: widget.noOfLine,
        maxLines: 4,
        style: AppTextStyles.inputText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AppTextStyles.hintText,
          label: widget.labelText,
          labelStyle: AppTextStyles.labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:todoapp_025/widgets/apptextstyle.dart';

// class BuildTextFormField extends StatelessWidget {
//   BuildTextFormField({
//     super.key,
//     this.noOfLine = 1,
//     this.hintText = '',
//     required this.controller,
//     required this.labelText,
//   });
//   final int noOfLine;
//   final Widget labelText;
//   final String hintText;
//   TextEditingController controller = TextEditingController();

//   FocusNode focusNode = FocusNode();

//   @override
//   void dispose() {
//     controller.dispose();
//     focusNode.dispose();
//     super.dispose();
//   }

//     void _unfocusTextField() {
//     focusNode.unfocus(); // Unfocusing the text field
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       minLines: noOfLine,
//       maxLines: 4,
//       style: AppTextStyles.inputText,
//       decoration: InputDecoration(
//           hintText: hintText,
//           hintStyle: AppTextStyles.hintText,
//           label: labelText,
//           labelStyle: AppTextStyles.labelText,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//           )),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:todoapp_025/widgets/apptextstyle.dart';

// class BuildTextFormField extends StatefulWidget {
//   const BuildTextFormField({
//     Key? key,
//     this.noOfLine = 1,
//     this.hintText = '',
//     this.inputType = TextInputType.name,
//     required this.controller,
//     required this.labelText,
//     required this.validator, // Validator function
//   }) : super(key: key);

//   final int noOfLine;
//   final Widget labelText;
//   final String hintText;
//   final TextEditingController controller;
//   final TextInputType inputType;
//   final String? Function(String?) validator; // Validator function

//   @override
//   _BuildTextFormFieldState createState() => _BuildTextFormFieldState();
// }

// class _BuildTextFormFieldState extends State<BuildTextFormField> {
//   late FocusNode focusNode;

//   @override
//   void initState() {
//     super.initState();
//     focusNode = FocusNode();
//   }

//   @override
//   void dispose() {
//     widget.controller.dispose();
//     focusNode.dispose();
//     super.dispose();
//   }

//   void _unfocusTextField() {
//     focusNode.unfocus();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _unfocusTextField,
//       child: TextFormField(
//         controller: widget.controller,
//         keyboardType: widget.inputType,
//         focusNode: focusNode,
//         minLines: widget.noOfLine,
//         maxLines: 4,
//         style: AppTextStyles.inputText,
//         decoration: InputDecoration(
//           hintText: widget.hintText,
//           hintStyle: AppTextStyles.hintText,
//           label: widget.labelText,
//           labelStyle: AppTextStyles.labelText,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ),
//         validator: widget.validator, // Use the validator function
//       ),
//     );
//   }
// }
