import 'package:flutter/material.dart';

import '../../widgets.dart';

class FormValidationPage extends StatefulWidget {
  const FormValidationPage({Key? key}) : super(key: key);

  @override
  State<FormValidationPage> createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  final _numberForm = GlobalKey<FormState>();
  final RegExp _digitRegex = RegExp(r'[a-zA-Z0-9]');
  // RegExp(r'[a-zA-Z0-9]') => RE for chrs a-z A-Z 0-9 NO @,# ,emojis.
  // RegExp('[0-9]+') => RE for numbers 0-9
  bool isValidForm = false;
  String ok = '';
  String no = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Form Validation'),
      body: Form(
        key: _numberForm,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Your name ...',
                border: InputBorder.none,
              ),
              validator: (inputValue) {
                if (inputValue!.isEmpty || !_digitRegex.hasMatch(inputValue)) {
                  return "Please Enter Name";
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 16,
              enableInteractiveSelection: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_balance),
                hintText: 'Your Account Balance Number...',
                border: InputBorder.none,
              ),
              validator: (inputValue) {
                if (inputValue!.isEmpty) {
                  return "Please Enter Account Balance Number";
                }
                return null;
              },
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.amber),
                onPressed: () {
                  if (_numberForm.currentState!.validate()) {
                    setState(() {
                      isValidForm = true;
                      ok = 'OK';
                    });
                  } else {
                    setState(() {
                      isValidForm = false;
                      no = 'Something is worng';
                    });
                  }
                },
                child: const Text("Check")),
            Text(isValidForm ? ok : no)
          ],
        ),
      ),
    );
  }
}
