import 'package:flutter/material.dart';

import '../../widgets.dart';

class ChipPage extends StatelessWidget {
  const ChipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Chip'),
      body: const Chip(
        avatar: CircleAvatar(
          backgroundColor: mainColor,
          child: Text('AA', style: TextStyle(color: Colors.white)),
        ),
        label: Text('Ahmed Abdelfattah'),
      ),
    );
  }
}
