import 'package:flutter/material.dart';

import '../../widgets.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('BottomSheet'),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('BottomSheet'),
            onPressed: () => showModalBottomSheet(
                elevation: 10,
                backgroundColor: mainColor,
                context: context,
                builder: (ctx) => Container(
                      width: double.infinity,
                      height: 150,
                      alignment: Alignment.center,
                      child: const Text(
                          'سبحان الله وبحمده .. سبحان الله العظيم',
                          style: TextStyle(color: Colors.white)),
                    )),
          ),
        ),
      ),
    );
  }
}
