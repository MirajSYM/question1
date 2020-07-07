import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Question1',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String x = 'light mode';
  Color _color;
  get color => _color;
  set color(value) => setState(() => _color = value);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Light mode!',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            label: Text('Dark Mode'),
            onPressed: null,
          ),
          FloatingActionButton.extended(
            label: Text('Light Mode'),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
