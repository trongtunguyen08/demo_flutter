import 'package:demo_flutter/data/notifiers.dart';
import 'package:demo_flutter/views/pages/home_page.dart';
import 'package:demo_flutter/views/pages/profile_page.dart';
import 'package:demo_flutter/views/pages/search_page.dart';
import 'package:demo_flutter/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), SearchPage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), centerTitle: true),
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
