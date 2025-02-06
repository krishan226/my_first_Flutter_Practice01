import 'package:flutter/material.dart';
import 'package:my_first_flutter/Views/Pages/expandable_flexible_test.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Snackbar!'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Open Snackbar'),
              ),
              Divider(
                color: Colors.teal,
                thickness: 3.0,
                endIndent: 200.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.teal,
                child: VerticalDivider(
                  color: Colors.white,
                  thickness: 3.0,
                  endIndent: 5.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Alert Dialog Title!'),
                      content: Text('This is an alert dialog'),
                      actions: [
                        FilledButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Open Dialog (Alerts)'),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(
                    value: 'e1',
                    child: Text('Element 1'),
                  ),
                  DropdownMenuItem(
                    value: 'e2',
                    child: Text('Element 2'),
                  ),
                  DropdownMenuItem(
                    value: 'e3',
                    child: Text('Element 3'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () {
                  setState(() {
                    print('Do Som');
                  });
                },
              ),
              Text(controller.text),
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              CheckboxListTile.adaptive(
                title: Text('Check me'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Text('Switch me'),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                max: 100.0,
                divisions: 10,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print('Slider value: $value');
                },
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,
                ),
                onTap: () {
                  print('Image Tapped');
                },
              ),

              // Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) {
              //                     return LoginPage(
              //                       title: 'User Login',
              //                     );
              //                   },
              //                 ),
              //               );
              //             }
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ExpandedFlexibleTestPage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('Show Flexible and Expanded'),
              ),
              FilledButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
