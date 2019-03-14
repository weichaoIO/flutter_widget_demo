import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoSwitch extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyCupertinoSwitch> {
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) => setState(() => _value1 = value);

  void _onChanged2(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new CupertinoSwitch(value: _value1, onChanged: _onChanged1),
              new SwitchListTile(
                value: _value2,
                onChanged: _onChanged2,
                title: new Text('Hello World',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
              )
            ],
          ),
        ),
      ),
    );
  }
}