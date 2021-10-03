import 'package:flutter/material.dart';

import '../../widgets.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Row'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const SizedBox(width: 5),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const Text('default'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const SizedBox(width: 5),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const Text('MainAxisAlignment.end'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const SizedBox(width: 5),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const Text('// center'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const SizedBox(width: 5),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const Text('CrossAxisAlignment.start'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const SizedBox(width: 5),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const Text('CrossAxisAlignment.end  '),
              ],
            ),
            const Text('Spacer class'),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                const Spacer(), // Defaults to a flex of one.
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
                // Gives twice the space between Middle and End than Begin and Middle.
                const Spacer(flex: 3),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(2),
                  color: Colors.amber,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
