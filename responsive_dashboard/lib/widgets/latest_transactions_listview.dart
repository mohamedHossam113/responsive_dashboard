import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/use_info_model.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({super.key});
  static const items = [
    UserInfoModel(
        image: '${Kconstants.shortCut}avatar_1.svg',
        title: 'Mostafa Khaled',
        subTitle: 'mostafakhaled24@gmail.com'),
    UserInfoModel(
        image: 'responsive_dashboard/assets/images/avatar_2.svg',
        title: 'Mohamed Magdy',
        subTitle: 'MohamedMagdy24@gmail.com'),
    UserInfoModel(
        image: '${Kconstants.shortCut}avatar_1.svg',
        title: 'Mostafa Salem',
        subTitle: 'mostafaSalem24@gmail.com')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfo(
                userInfoModel: items[index],
              ),
            );
          }),
    );
  }
}
