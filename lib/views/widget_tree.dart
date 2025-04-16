import 'package:demo_flutter/data/constants.dart';
import 'package:demo_flutter/data/notifiers.dart';
import 'package:demo_flutter/views/pages/home_page.dart';
import 'package:demo_flutter/views/pages/profile_page.dart';
import 'package:demo_flutter/views/pages/search_page.dart';
import 'package:demo_flutter/views/pages/settings_page.dart';
import 'package:demo_flutter/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), SearchPage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool(KContants.darkKey, isDarkModeNotifier.value);
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(title: "Settings Page");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
    );
  }
}
