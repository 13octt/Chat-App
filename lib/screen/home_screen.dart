
import 'package:chat_app/style/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('23423'),
        backgroundColor: AppColors.background,
        elevation: 0,
        // backgroundColor: Colors.white.withOpacity(.1),
      ),
      body: Container(),
    );
  }
}
