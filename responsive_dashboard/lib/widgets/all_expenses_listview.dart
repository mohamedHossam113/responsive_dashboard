import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesListview extends StatefulWidget {
  AllExpensesListview({super.key});

  static const items = [
    AllExpensesItemModel(
      image: '${Kconstants.shortCut}balance_icon.svg',
      title: 'Balance',
      date: '27 July',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: '${Kconstants.shortCut}income_icon.svg',
      title: 'Income',
      date: '27 July',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: '${Kconstants.shortCut}expenses_icon.svg',
      title: 'Expenses',
      date: '27 July',
      price: r'$20,129',
    ),
  ];
  @override
  State<AllExpensesListview> createState() => _AllExpensesListviewState();
}

class _AllExpensesListviewState extends State<AllExpensesListview> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      // .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      // .toList()
      children: AllExpensesListview.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: AllExpensesItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
