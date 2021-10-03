import 'package:flutter/material.dart';

import '../../widgets.dart';

class IconButtonPage extends StatelessWidget {
  const IconButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('IconButton'),
      body: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.volume_up),
            onPressed: () {},
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: Material(
              color: Colors.indigoAccent,
              elevation: 30.0,
              borderRadius: BorderRadius.circular(5),
              child: Center(
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.lightBlue,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.android),
                    color: Colors.white,
                    onPressed: () {},
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
