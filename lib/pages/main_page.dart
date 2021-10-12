import 'package:flutter/material.dart';
import 'package:routes/routes/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data to come back';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
              child: Text('Go to Second Page'),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () async {
                var resultBack = await Navigator.of(context)
                    .pushNamed(RouteManager.thirdPage, arguments: {
                  'name': 'John Rambo',
                });
                setState(() {
                  result = resultBack;
                });
              },
              child: Text('Go to third Page'),
            ),
            Text('$result'),
          ],
        ),
      ),
    );
  }
}
