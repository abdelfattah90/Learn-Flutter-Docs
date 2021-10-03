import 'package:flutter/material.dart';

// FormControllerPage
// appBar: appbarWidget('Form & Controller'),
import '../../widgets.dart';

class FormControllerPage extends StatefulWidget {
  const FormControllerPage({Key? key}) : super(key: key);

  @override
  _FormControllerPageState createState() => _FormControllerPageState();
}

class _FormControllerPageState extends State<FormControllerPage> {
  final myController = TextEditingController();
  String val = '';

  bool isMale = true;
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Form Controller'),
      body: Column(
        children: [
          TextField(controller: myController),
          Text(val),
          TextButton(
            onPressed: () {
              setState(() {
                val = myController.text;
              });
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
