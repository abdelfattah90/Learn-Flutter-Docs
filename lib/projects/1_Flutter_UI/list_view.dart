import 'package:flutter/material.dart';

// import 'package:get/get.dart';
import '../../widgets.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(20, (i) => "Item $i");
    return Scaffold(
      appBar: appbarWidget('ListView'),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
