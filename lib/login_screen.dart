import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        const Text('Hello, Welcome back!'),
        const Text('Login to continue'),
        const TextField(
          decoration: InputDecoration(hintText: 'Username'),
        ),
        const TextField(
          decoration: InputDecoration(hintText: 'Password'),
        ),
        TextButton(
            onPressed: () {
              print('Forgot is clicked');
            },
            child: const Text('Forgot password')),
        ElevatedButton(
            onPressed: () {
              print('Login is clicked');
            },
            child: const Text('Log in')),
        const Text('Or sign in with'),
        ElevatedButton(
            onPressed: () {
              print('Google is clicked');
            },
            child: Row(
              children: [
                Image.asset(
                  'images/assets/google.webp',
                  width: 22,
                  height: 22,
                ),
                const Text('Login with Google'),
              ],
            )),
        ElevatedButton(
            onPressed: () {
              print('Facbook is clicked');
            },
            child: Row(
              children: [
                Image.asset(
                  'images/assets/google.webp',
                  width: 22,
                  height: 22,
                ),
                const Text('Login with facebook'),
              ],
            )),
        Row(
          children: [
            const Text('Don\'t have an account?'),
            TextButton(onPressed: () {}, child: const Text('Sign up'))
          ],
        )
      ]),
    );
  }
}
