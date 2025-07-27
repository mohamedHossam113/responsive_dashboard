import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_textfield.dart';

class TitleTextfield extends StatelessWidget {
  const TitleTextfield(
      {super.key, required this.title, required this.hintText});
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Customer Name',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextfield(
          hint: hintText,
        ),
      ],
    );
  }
}
