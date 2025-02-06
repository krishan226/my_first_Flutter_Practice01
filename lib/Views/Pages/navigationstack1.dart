import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/navigationsatack2.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:my_first_flutter/data/classes/activity_class.dart';

class NavigationStack1 extends StatefulWidget {
  const NavigationStack1({super.key});

  @override
  State<NavigationStack1> createState() => _NavigationStack1State();
}

class _NavigationStack1State extends State<NavigationStack1> {
// Varibles

  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('secrets-api.appbrewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
          convert.jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Stack 1'),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          Widget widget;
          if (snapshot.connectionState == ConnectionState.waiting) {
            widget = CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            widget = Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NavigationStack2();
                          },
                        ),
                      );
                    },
                    child: Text(activity.secret.toString()),
                  ),
                ],
              ),
            );
          } else {
            widget = Center(
              child: Text('error'),
            );
          }
          return widget;
        },
      ),
    );
  }
}
