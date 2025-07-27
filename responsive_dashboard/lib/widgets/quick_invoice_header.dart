import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
              color: Color(0xfffafafa), shape: OvalBorder()),
          child: const Icon(Icons.add, color: Color(0xff4Eb7f2)),
        ),
      ],
    );
  }
}
