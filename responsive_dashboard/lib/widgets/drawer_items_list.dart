import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/utils/drawer_item_list.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  const DrawerItemsList({
    super.key,
  
  });

 

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  int activeIndex = 0;
final List<DrawerItemList> items = [
  DrawerItemList(title: 'Dashboard', image: '${kConstants.shortCut}dashboard_icon.svg'),
  DrawerItemList(title: 'My Transactions', image: '${kConstants.shortCut}my_transactions_icon.svg'),
  DrawerItemList(title: 'Statistics', image: '${kConstants.shortCut}statistics_icon.svg'),
  DrawerItemList(title: 'Wallet Account', image: '${kConstants.shortCut}wallet_icon.svg'),
  DrawerItemList(title: 'My Investments', image: '${kConstants.shortCut}investments_icon.svg'),];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){
    return GestureDetector(
      onTap: (){
        setState(() {
          activeIndex =index;
          print(activeIndex);
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: DrawerItem(drawerItemModel:items[index],isActive: activeIndex == index ),
      ),
    );   
    });
  }
}
