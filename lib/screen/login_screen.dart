import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Hello, Welcome back!',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('Login to continue',
                style: TextStyle(color: Colors.white)),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5)),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text('Forgot password?')),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/main');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Log in')),
            ),
            const SizedBox(height: 64),
            const Text(
              'Or sign in with',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.webp',
                      width: 22,
                      height: 22,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Login with Google',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.webp',
                      width: 22,
                      height: 22,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Login with facebook',
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Times New Roman'),
                ),
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.amber),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: const Text('Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        )))
              ],
            ),
            const Spacer(),
          ]),
        ),
      ),
    ));
  }
}
