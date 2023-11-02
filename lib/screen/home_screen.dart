// ignore_for_file: must_be_immutable

import 'package:chat_app/components/post_item.dart';
import 'package:flutter/material.dart';
import '../components/toolbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: const CustomToolbar(
          title: 'Social App',
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.mark_as_unread))
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(        
              user: users[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              height: 24,
            );
          },
          itemCount: users.length,
        ));
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }

    return users;
  }
}
