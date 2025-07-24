import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/drawer_item_list.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});
 final DrawerItemList drawerItemModel;
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(leading: SvgPicture.asset(drawerItemModel.image),
    title: Text(drawerItemModel.title,style: AppStyles.styleMedium16,),
    );
  }
}