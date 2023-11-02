import 'package:chat_app/components/textfield.dart';
import 'package:chat_app/style/app_colors.dart';
import 'package:flutter/material.dart';
import '../components/toolbar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const CustomToolbar(title: 'Edit Profile', actions: [
        //   Icon(Icons.outbond),
        // ]),
        // actions: [
        //   PopupMenuButton(
        //       // onSelected: (String result) {
        //       //   // Handle menu item selection here
        //       //   if (result == 'Option 1') {
        //       //     // Handle Option 1
        //       //   } else if (result == 'Option 2') {
        //       //     // Handle Option 2
        //       //   } else if (result == 'Option 3') {
        //       //     // Handle Option 3
        //       //   }
        //       // },
        //       itemBuilder: (context) => <PopupMenuEntry<String>>[
        //             const PopupMenuItem<String>(
        //               value: 'Option 1',
        //               child: Text('Option 1'),
        //             ),
        //             const PopupMenuItem<String>(
        //               value: 'Option 2',
        //               child: Text('Option 2'),
        //             ),
        //             const PopupMenuItem<String>(
        //               value: 'Option 3',
        //               child: Text('Option 3'),
        //             ),
        //           ])
        // ],
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
                    'assets/images/user.png',
                    color: Colors.white,
                  )),
            ),
            const SizedBox(
              height: 64,
            ),
            const CustomTextField(
              label: 'First Name',
              hint: 'John',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              label: 'Last Name',
              hint: 'Alex',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              label: 'Phone Number',
              hint: '+84 113',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              label: 'Location',
              hint: 'Ho Chi Minh',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              label: 'Birthday',
              hint: '30/2/1945',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              label: 'Gender',
              hint: 'Man',
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

class CustomPopupMenu extends StatelessWidget {
  const CustomPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
