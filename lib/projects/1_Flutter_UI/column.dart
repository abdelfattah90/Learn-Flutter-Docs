import 'package:flutter/material.dart';

import '../../widgets.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Column'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('MainAxisAlignment.spaceBetween'),
            Container(
              margin: const EdgeInsets.all(2),
              height: 100,
              width: 350,
              color: Colors.amber,
              child: Column(
                children: const [
                  Text('default with up Column'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              height: 100,
              width: 350,
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('CrossAxisAlignment.start'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              height: 100,
              width: 350,
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('CrossAxisAlignment.end'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              height: 100,
              width: 350,
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('MainAxisAlignment.end'),
                  Text('CrossAxisAlignment.start'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              height: 100,
              width: 350,
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('MainAxisAlignment.center'),
                  Text('CrossAxisAlignment.center'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              height: 100,
              width: 350,
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('MainAxisAlignment.end'),
                  Text('CrossAxisAlignment.end'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
