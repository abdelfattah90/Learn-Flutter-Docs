import 'package:flutter/material.dart';

import '../../widgets.dart';

class AutocompletePage extends StatelessWidget {
  const AutocompletePage({Key? key}) : super(key: key);
  static const List<String> _kOptions = <String>[
    'flutter',
    'dart',
    'javascript',
    'laravel',
    'android',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Autocomplete'),
      body: Column(
        children: [
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return _kOptions.where((String option) {
                return option.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String selection) {
             // print('You just selected $selection');
            },
          ),
          const Text(''''
    flutter
    dart
    javascript
    laravel
    android
    ''')
        ],
      ),
    );
  }
}
