import 'package:chat_app/style/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String user;

  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: Image.asset(
                  'assets/images/google.webp',
                  width: 40,
                  height: 40,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Image.asset(
              'assets/temp/city.jpg',
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              Icon(Icons.favorite),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.comment),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.share),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
              'Using IOT sensor to measure then code MQTT protocol to display data’s sensor in mobile app. '),
        ],
      ),
    );
  }
}
