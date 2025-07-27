import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboar_desktop_layout.dart';

class DashoardView extends StatelessWidget {
  const DashoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AdaptiveLayoutWidget(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashboarDesktopLayout()),
    );
  }
}
