import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12))),
      child: const Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(
            width: 18,
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Color(0xff064061),
          )
        ],
      ),
    );
  }
}
