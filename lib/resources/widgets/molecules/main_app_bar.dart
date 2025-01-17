import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '../../themes/styles/light_theme_colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0,
      centerTitle: false,
      backgroundColor: LightThemeColors().white,
      title: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                getImageAsset("logo_horiz.png"),
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
