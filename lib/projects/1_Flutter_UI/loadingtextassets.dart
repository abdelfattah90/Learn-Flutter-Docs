import 'dart:async' show Future;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets.dart';

class LoadingTextAssets extends StatefulWidget {
  const LoadingTextAssets({Key? key}) : super(key: key);

  @override
  _LoadingTextAssetsState createState() => _LoadingTextAssetsState();
}

class _LoadingTextAssetsState extends State<LoadingTextAssets> {
  String? _data;

  Future<void> _loadData() async {
    final _loadedData =
        await rootBundle.loadString('assets/flutter_ui/config.txt');
    setState(() {
      _data = _loadedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Loading Text From Assets'),
      body: Text(_data ?? 'Nothing to show'),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadData,
        child: const Text('Load'),
      ),
    );
  }
}
