import 'package:flutter/material.dart';


class SwitchListTileDemo extends StatefulWidget {
  @override
  _SwitchListTileDemoState createState() => _SwitchListTileDemoState();
}

class _SwitchListTileDemoState extends State<SwitchListTileDemo> {

  bool _flutter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text('Flutter SwitchListTile Demo'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          child: SwitchListTile(
            title: Text('Flutter Devs',style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                fontSize: 20
            ),
            ),
            value: _flutter,
            activeColor: Colors.red,
            inactiveTrackColor: Colors.grey,
            onChanged: (bool value) {
              setState(() {
                _flutter = value;
              });
            },
            secondary: Image.asset("assets/devs.jpg",),
            subtitle: Text('Software Company',style: TextStyle(
              color: Colors.blueGrey[600],
            ),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
          ),
        ),
      ),
    );
  }
}