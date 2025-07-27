import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/latest_transactions_listview.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class DashboarDesktopLayout extends StatelessWidget {
  const DashboarDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            ))
      ],
    );
  }
}
