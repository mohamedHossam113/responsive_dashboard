import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/utils/drawer_item_list.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_items.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:   Column(
        children: [
          const UserInfo(
              image: 'responsive_dashboard/assets/images/avatar_1.svg',
              title: 'Muhammad Hossam',
              subtitle: 'muhammadhsamir11@gmail.com'),
              const SizedBox(height: 8),
              const Expanded(child: DrawerItemsListView()),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right:20,left:28,top:40,bottom: 20),
                child: InActiveDrawerItem(drawerItemModel:DrawerItemList(title: 'System Settings',image: '${kConstants.shortCut}setting_icon.svg')),
              ),
              Padding(
                padding: const EdgeInsets.only(right:20,left:25,top:10,bottom: 48),
                child: InActiveDrawerItem(drawerItemModel:DrawerItemList(title: 'Logout Account',image: '${kConstants.shortCut}logout_icon.svg')),
              ),
              
        ],
      ),
    );
  }
}

