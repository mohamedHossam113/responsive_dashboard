import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/drawer_item_list.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_items.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});
 final DrawerItemList drawerItemModel;
 final bool isActive;
  @override
  Widget build(BuildContext context) {

    // ezay el GestureDetector sama3t hena wana msh aamelaha import ?
    
    return isActive? ActiveDrawerItem(drawerItemModel: drawerItemModel,): InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

