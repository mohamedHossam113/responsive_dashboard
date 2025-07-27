import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/unselected_and_selected_all_expenses.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedAllExpenses(itemModel: itemModel)
        : UnselectedAllExpenses(itemModel: itemModel);
  }
}
