import 'dart:convert' as convert;
import 'package:demo_flutter/data/classes/activity_class.dart';
import 'package:demo_flutter/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Future<Activity> _getData() async {
    var url = Uri.https("bored-api.appbrewery.com", "/random");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
        convert.jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception("Request failed with status: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: _getData(),
        builder: (context, AsyncSnapshot snapshot) {
          Widget widget;
          if (snapshot.connectionState == ConnectionState.waiting) {
            widget = Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            Activity activity = snapshot.data;
            widget = Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(children: [HeroWidget(title: activity.activity)]),
              ),
            );
          } else {
            widget = Center(child: Text("Error"));
          }
          return widget;
        },
      ),
    );
  }
}
