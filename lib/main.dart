import 'package:chat_app/screen/home_screen.dart';
import 'package:chat_app/screen/login_screen.dart';
import 'package:chat_app/screen/edit_profile_screen.dart';
import 'package:chat_app/screen/main_screen.dart';
import 'package:chat_app/screen/profile_screen.dart';
import 'package:chat_app/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'style/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppColors.background),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
        '/home': (context) =>  HomeScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/edit_profile': (context) => const EditProfileScreen(),
      },
    );
  }
}
