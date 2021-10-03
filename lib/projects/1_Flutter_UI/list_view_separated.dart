import 'package:flutter/material.dart';

import '../../widgets.dart';

class ListViewseparatedPage extends StatelessWidget {
  const ListViewseparatedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('ListViewseparated'),
      body: ListView.separated(
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('item $index'),
          );
        },
      ),
    );
  }
}
