import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(.5),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: 'Username',
                        hintText: 'Alex'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(.5),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: 'Username',
                        hintText: 'Alex'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(.5),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: 'Username',
                        hintText: 'Alex'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(.5),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        labelText: 'Username',
                        hintText: 'Alex'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black),
                    onPressed: () {
                      // Navigator.of(context).pushNamed('/');
                      Navigator.of(context).pushNamed('/profile');
                    },
                    child: const Text('Sign up'),
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
