import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
              color: imageBackground ?? const Color(0XFAFAFAFA),
              shape: const OvalBorder()),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: imageColor == null ? const Color(0xff064061) : Colors.white,
        )
      ],
    );
  }
}
