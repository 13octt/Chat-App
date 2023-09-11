import 'package:chat_app/style/app_text.dart';
import 'package:flutter/material.dart';
import '../style/app_colors.dart';

class CustomToolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const CustomToolbar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppText.header1,
      ),
      centerTitle: false,
      actions: actions,
      backgroundColor: AppColors.background,
      // elevation: 0,
      // backgroundColor: Colors.white.withOpacity(.1),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); //60
}
