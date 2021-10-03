import 'package:flutter/material.dart';

import '../../widgets.dart';

class IndexedStackPage extends StatefulWidget {
  const IndexedStackPage({Key? key}) : super(key: key);

  @override
  _IndexedStackPageState createState() => _IndexedStackPageState();
}

class _IndexedStackPageState extends State<IndexedStackPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('IndexedStack'),
      body: Padding(
        child: Column(
          children: <Widget>[_stackedContainers(), _navigationButtons()],
        ),
        padding: const EdgeInsets.all(5.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Center(
              child: Image.network(
            "https://pbs.twimg.com/media/EP4VDlgVAAAwxKW.jpg",
          )),
          Center(
              child: Image.network(
            "https://images.unsplash.com/photo-1631347531547-9dc03526e00e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          )),
          Center(
              child: Image.network(
            "https://images.unsplash.com/photo-1631473134118-2748ec2c8388?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
          )),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)),
          onPressed: () {
            setState(() => index = 0);
          },
          child: const Text('1'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)),
          onPressed: () {
            setState(() => index = 1);
          },
          child: const Text('2'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)),
          onPressed: () {
            setState(() => index = 2);
          },
          child: const Text('3'),
        ),
      ],
    );
  }
}
