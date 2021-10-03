import 'package:flutter/material.dart';

import '../../widgets.dart';

class ListViewBuilderlonglistPage extends StatelessWidget {
  const ListViewBuilderlonglistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (i) => "Item $i");

    return Scaffold(
        appBar: appbarWidget('ListViewBuilderlonglist'),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ));
  }
}
