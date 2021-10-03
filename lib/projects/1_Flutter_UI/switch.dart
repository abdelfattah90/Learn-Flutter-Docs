import 'package:flutter/material.dart';

import '../../widgets.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

bool _lights = false;

class _SwitchPageState extends State<SwitchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Switch'),
      body: SwitchListTile(
        activeColor: Colors.black45,
        title: _lights ? const Text('Dark') : const Text('Light'),
        value: _lights,
        onChanged: (bool value) {
          setState(() {
            _lights = value;
          });
        },
        secondary: _lights
            ? const Icon(Icons.dark_mode_outlined)
            : const Icon(Icons.light_mode),
      ),
    );
  }
}
