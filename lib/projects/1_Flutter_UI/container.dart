import 'package:flutter/material.dart';

import '../../widgets.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Container'),
      body: Column(
        children: [
          Container(
            child: const Text(
                'Container with alignment: padding: margin: color: width: height:'),
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            color: Colors.amber[600],
            width: double.infinity,
            height: 150.0,
          ),
          const SizedBox(height: 20),
          const Text('Container with decoration:'),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
