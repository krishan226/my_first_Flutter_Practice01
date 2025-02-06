import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/navigationsatack2.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class NavigationStack1 extends StatefulWidget {
  const NavigationStack1({super.key});

  @override
  State<NavigationStack1> createState() => _NavigationStack1State();
}

class _NavigationStack1State extends State<NavigationStack1> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    var url = Uri.https('secrets-api.appbrewery.com', '/random');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var secretValue = jsonResponse['secret'];
      print(secretValue);
      log(response.body);
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
      body: Center(
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
              child: Text('Go to Navigation Stack 2'),
            ),
          ],
        ),
      ),
    );
  }
}
