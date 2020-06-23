import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String value = 'home';
  String dropdownValue = 'One';
  // List list = ['cars','toys'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton(
          value: value,
          items: [
            DropdownMenuItem(
              child: Text('Widgets catalog'),
              value: 'Widgets catalog',
            ),
                        DropdownMenuItem(
              child: Text('home'),
              value: 'home',
            ),
            DropdownMenuItem(
              child: Text('cars'),
              value: 'cars',
            ),
            DropdownMenuItem(
              child: Text('toys'),
              value: 'toys',
            ),
            DropdownMenuItem(
              child: Text('jumanji'),
              value: 'jumanji',
            ),
            DropdownMenuItem(
              child: Text('what'),
              value: 'what',
            ),
          ],
          onChanged: (val) {
            setState(() {
              value = val;
            });
            print(value);
          },
        ),
      ),
    );
  }
}
