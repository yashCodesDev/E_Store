import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? EColors.black : EColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        labelColor: dark ? EColors.white : EColors.primary,
        unselectedLabelColor: EColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}
