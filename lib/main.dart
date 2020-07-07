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
  String y = 'dark mode';
  Color _color;
  get color => _color;
  set color(value) => setState(() => _color = value);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Center(
        child: Text(
          x,
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
              onPressed: () =>
                  {_color = Colors.black, y = 'Dark mode', setState(() {})}),
          FloatingActionButton.extended(
            label: Text('Light Mode'),
            onPressed: () =>
                {_color = Colors.white, x = 'light mode', setState(() {})},
          ),
        ],
      ),
    );
  }
}
