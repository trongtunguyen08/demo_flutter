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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                print("Image selected");
              },
            ),
          ],
        ),
      ),
    );
  }
}
