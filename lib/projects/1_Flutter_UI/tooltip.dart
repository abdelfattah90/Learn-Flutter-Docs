import 'package:flutter/material.dart';

import '../../widgets.dart';

class TooltipPage extends StatelessWidget {
  const TooltipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Tooltip'),
      body: const Tooltip(
        message: 'I am a Tooltip',
        child: Text('Hover over the text to show a tooltip.'),
      ),
    );
  }
}
