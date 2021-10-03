import 'package:flutter/material.dart';

import '../../widgets.dart';

class FloatingActionButtonPage extends StatelessWidget {
  const FloatingActionButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('FloatingActionButton'),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        //.extended
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
        mini: true,
      ),
    );
  }
}
