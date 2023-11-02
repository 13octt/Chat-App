import 'package:chat_app/components/avatar.dart';
import 'package:chat_app/components/toolbar.dart';
import 'package:chat_app/style/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomToolbar(
          title: 'Profile',
          actions: [
            PopupMenuButton(
                onSelected: (value) {
                  switch (value) {
                    case ProfileMenu.edit:
                      Navigator.of(context)
                          .pushReplacementNamed('/edit_profile');
                      break;
                    case ProfileMenu.logout:
                      Navigator.of(context).pushNamed('/');
                      break;
                    default:
                  }
                },
                icon: const Icon(Icons.more_vert_rounded),
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                      value: ProfileMenu.edit,
                      child: Text('Edit'),
                    ),
                    PopupMenuItem(
                      value: ProfileMenu.logout,
                      child: Text('Log out'),
                    ),
                  ];
                })
          ],
        ),
        body: Column(
          children: [
            CustomAvatar(size: 220,),
            const Text(
              'Akali',
              style: AppText.header2,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Thông thạo 7',
              style: AppText.subtitle3,
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '472',
                      style: AppText.header2,
                    ),
                    Text(
                      'Followers',
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '50',
                      style: AppText.header2,
                    ),
                    Text(
                      'Posts',
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '700',
                      style: AppText.header2,
                    ),
                    Text(
                      'Following',
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}

