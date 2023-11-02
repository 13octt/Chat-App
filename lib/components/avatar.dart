import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final double size;
  const CustomAvatar({super.key, this.size = 180 });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        child: Image.asset(
          'assets/temp/akali.jpg',
          width: size,
          height: size,
        ),
      ),
    );
  }
}
