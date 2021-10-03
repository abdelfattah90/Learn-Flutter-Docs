import 'package:flutter/material.dart';

import '../../widgets.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Center'),
      body: const Center(
        child: Text('Center '),
      ),
    );
  }
}
