import 'package:flutter/material.dart';

class MaterialPage extends StatelessWidget {
  const MaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.amber,
      child: SafeArea(
        child: Text('Material class .. Do whatever you can you do'),
      ),
    );
  }
}
