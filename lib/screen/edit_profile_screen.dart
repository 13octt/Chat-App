import 'package:chat_app/style/app_colors.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: AppColors.background,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 100,
          margin: const EdgeInsets.all(16.0),
          child: Column(children: [
            Container(
              width: 80,
              height: 80,
              alignment: Alignment.center,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/google.webp',
                  )),
            ),
            const SizedBox(
              height: 64,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(.5),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    labelText: 'First Name',
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
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    labelText: 'Last Name',
                    hintText: 'John'),
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
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    labelText: 'Phone number',
                    hintText: '+84 113'),
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
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    labelText: 'Location',
                    hintText: 'Ho Chi Minh City'),
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
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    labelText: 'Birthday',
                    hintText: '13 October 2002'),
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
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  labelText: 'Gender',
                ),
              ),
            ),
            const Row(
              children: [
                CustomCheckBox(),
                Text(
                  'Visible on your profile',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Text('Save')),
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Checkbox(
      checkColor: Colors.black,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
