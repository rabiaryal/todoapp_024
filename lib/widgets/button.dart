import 'package:flutter/material.dart';
import 'package:todoapp_025/widgets/appcolors.dart';
import 'package:todoapp_025/widgets/apptextstyle.dart';

class MyButton extends StatelessWidget {
  final String? label; // Optional label
  final Widget? icon; // Icon as a widget
  final VoidCallback onPressed;
  final double height; // Button height
  final double width; // Button width

  const MyButton({
    super.key,
    this.label,
    this.icon,
    this.height = 50.0, // Default height
    this.width = 150.0, // Default width
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min, // Center-align the content
            children: [
              if (icon != null) ...[
                icon!, // Add the widget icon
                const SizedBox(width: 8), // Space between icon and label
              ],
              if (label != null)
                Text(
                  label!,
                  style: AppTextStyles.buttonText,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
