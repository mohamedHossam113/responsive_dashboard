import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  const Column(
        children: [
          UserInfo(
              image: 'responsive_dashboard/assets/images/avatar_1.svg',
              title: 'Muhammad Hossam',
              subtitle: 'muhammadhsamir11@gmail.com'),
              SizedBox(height: 8),
              DrawerItemsList()
              
        ],
      ),
    );
  }
}

