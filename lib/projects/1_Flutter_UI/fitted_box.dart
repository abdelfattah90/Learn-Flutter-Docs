import 'package:flutter/material.dart';

import '../../widgets.dart';

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('FittedBox - FractionallySizedBox'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: 170,
            color: Colors.red,
            child: FittedBox(
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 200,
            width: 170,
            color: Colors.black54,
            child: FittedBox(
              alignment: Alignment.center,
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 20),
          Flexible(
            child: FractionallySizedBox(
              widthFactor: 0.4,
              heightFactor: 0.6,
              alignment: FractionalOffset.center,
              child: DecoratedBox(
                child: const Text(
                    'FractionallySizedBox \n \n A widget that sizes its child to a fraction of the total available space. '),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
