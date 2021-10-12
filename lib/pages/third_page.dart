import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String name;
  ThirdPage({required this.name});
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Third Page',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Hello World ');
          },
          child: Text('Hi ${widget.name}, Go back to main page'),
        ),
      ),
    );
  }
}
