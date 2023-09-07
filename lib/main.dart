import 'package:chat_app/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'style/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Urbanist', scaffoldBackgroundColor: AppColors.background),
        debugShowCheckedModeBanner: false,
        home: const SafeArea(
          child: LoginScreen(),
        ));
  }
}
