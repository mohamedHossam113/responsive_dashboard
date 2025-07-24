import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/utils/drawer_item_list.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
 static List<DrawerItemList> items = [
  DrawerItemList(title: 'Dashboard', image: '${kConstants.shortCut}dashboard_icon.svg'),
  DrawerItemList(title: 'My Transactions', image: '${kConstants.shortCut}my_transactions_icon.svg'),
  DrawerItemList(title: 'Statistics', image: '${kConstants.shortCut}statistics_icon.svg'),
  DrawerItemList(title: 'Wallet Account', image: '${kConstants.shortCut}wallet_icon.svg'),
  DrawerItemList(title: 'My Investments', image: '${kConstants.shortCut}investments_icon.svg'),];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Column(
        children: [
          const UserInfo(
              image: 'responsive_dashboard/assets/images/avatar_1.svg',
              title: 'Muhammad Hossam',
              subtitle: 'muhammadhsamir11@gmail.com'),
              const SizedBox(height: 8),
              ListView.builder(
                itemCount: items.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index){
              return DrawerItem(drawerItemModel: items[index],);   
              })
              
        ],
      ),
    );
  }
}
