import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Entry extends StatefulWidget {
  Entry({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EntrySate createState() => _EntrySate();
}

enum Gender { Male, Female }

class _EntrySate extends State<Entry> {
// ...

  Gender _character = Gender.Male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'PhoneNumber',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'NRC',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Male'),
                    leading: Radio(
                      value: Gender.Male,
                      groupValue: _character,
                      onChanged: (Gender value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Female'),
                    leading: Radio(
                      value: Gender.Female,
                      groupValue: _character,
                      onChanged: (Gender value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                left: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
              ),
//--------------------------------------
              // border: Border.all(width: 2.0, color: Color(0xFFFFFFFF)),

              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date Of Birth',
              ),
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1000),
                    lastDate: DateTime.now());
              },
              readOnly: true,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address',
                alignLabelWithHint: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: RaisedButton(
              onPressed: () => _showMyDialog(),
              child: Text('Register'),
              padding: const EdgeInsets.all(15),
              color: Colors.blue[700],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Home(
                            title: 'Home',
                          ))),
            ),
          ],
        );
      },
    );
  }
}
