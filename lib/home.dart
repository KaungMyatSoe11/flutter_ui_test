import 'package:flutter/material.dart';

import 'entry.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Entry(
                              title: 'Register',
                            ))),
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text('Hello'),
        ],
      ),
    );
  }
}
