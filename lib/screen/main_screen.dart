import 'package:chat_app/screen/home_screen.dart';
import 'package:chat_app/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/home-svgrepo-com.svg'),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/heart-svgrepo-com.svg'),
                  label: 'Favorite'),
              const BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'), 
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      'assets/svg/chat-round-line-svgrepo-com.svg'),
                  label: 'Chat'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/profile-svgrepo-com.svg'), label: 'Profile'),
            ],
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}

final pages = [
  HomeScreen(),
  const Center(
    child: Text('Favorite'),
  ),
  const Center(
    child: Text('Add'),
  ),
  const Center(
    child: Text('Chat'),
  ),
  const ProfileScreen(),
];
