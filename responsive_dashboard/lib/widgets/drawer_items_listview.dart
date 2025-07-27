import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/utils/drawer_item_list.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemList> items = [
    DrawerItemList(
        title: 'Dashboard', image: '${Kconstants.shortCut}dashboard_icon.svg'),
    DrawerItemList(
        title: 'My Transactions',
        image: '${Kconstants.shortCut}my_transactions_icon.svg'),
    DrawerItemList(
        title: 'Statistics',
        image: '${Kconstants.shortCut}statistics_icon.svg'),
    DrawerItemList(
        title: 'Wallet Account',
        image: '${Kconstants.shortCut}wallet_icon.svg'),
    DrawerItemList(
        title: 'My Investments',
        image: '${Kconstants.shortCut}investments_icon.svg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              activeIndex = index;
              log(activeIndex.toString());
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(
                top: 15.0, left: 28, right: 20, bottom: 15),
            child: DrawerItem(
                drawerItemModel: items[index], isActive: activeIndex == index),
          ),
        );
      },
    );
  }
}
