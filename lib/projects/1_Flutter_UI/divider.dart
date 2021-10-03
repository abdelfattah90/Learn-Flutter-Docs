import 'package:flutter/material.dart';

import '../../widgets.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({Key? key}) : super(key: key);
  Divider dividerLine() => const Divider(
        color: Color(0xFF686868),
        thickness: 0.5,
        indent: 20.0,
        endIndent: 20.0,
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Divider'),
      body: dividerLine(),
    );
  }
}
