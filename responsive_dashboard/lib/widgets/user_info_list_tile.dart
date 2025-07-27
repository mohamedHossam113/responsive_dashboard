import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/model/use_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/constants.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset('${Kconstants.shortCut}avatar_3.svg'),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
