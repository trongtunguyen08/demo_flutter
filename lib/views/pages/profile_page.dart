import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DropdownButton(
              hint: const Text("Please choose an item"),
              value: menuItem,
              items: [
                DropdownMenuItem(
                  value: "el1",
                  child: const Text("Menu Item 1"),
                ),
                DropdownMenuItem(
                  value: "el2",
                  child: const Text("Menu Item 2"),
                ),
                DropdownMenuItem(
                  value: "el3",
                  child: const Text("Menu Item 3"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),
            TextField(
              controller: _controller,
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(_controller.text),
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              title: Text('CheckboxListTile'),
              subtitle: Text('Subtitle'),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('SwitchListTile'),
              subtitle: Text('Subtitle'),
              controlAffinity: ListTileControlAffinity.leading,
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              divisions: 10,
            ),
            GestureDetector(
              child: Image.asset("assets/images/bg.jpg"),
              onTap: () {
                if (kDebugMode) {
                  print("Image selected");
                }
              },
            ),
            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                if (kDebugMode) {
                  print("Image selected");
                }
              },
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Button pressed!");
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: const Text("Press Me"),
            ),
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Button pressed!");
                }
              },
              child: const Text("Press Me"),
            ),
            FilledButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Button pressed!");
                }
              },
              child: const Text("Press Me"),
            ),
            TextButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Button pressed!");
                }
              },
              child: const Text("Press Me"),
            ),
            OutlinedButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Button pressed!");
                }
              },
              child: const Text("Press Me"),
            ),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}
