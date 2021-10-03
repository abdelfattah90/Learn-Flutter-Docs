import 'package:flutter/material.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('AppBar', style: TextStyle(fontSize: 30)),
          backgroundColor: Colors.grey,
          centerTitle: true,
          toolbarOpacity: 0.7,
          toolbarHeight: 70.0,
          actions: [
            IconButton(
                icon: const Icon(Icons.notifications_active), onPressed: () {})
          ]),
      body: Container(),
    );
  }
}
