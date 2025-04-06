import 'package:demo_flutter/views/widget_tree.dart';
import 'package:demo_flutter/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lotties/welcome.json"),
            FittedBox(
              child: Text(
                "Flutter Mapp",
                style: TextStyle(fontSize: 50.0, letterSpacing: 50.0),
              ),
            ),
            SizedBox(height: 20.0),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              child: Text("Get Started"),
            ),
            TextButton(onPressed: () => {}, child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
