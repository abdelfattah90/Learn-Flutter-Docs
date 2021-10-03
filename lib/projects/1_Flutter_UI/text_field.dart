// https://flutterforyou.com/
// https://blog.logrocket.com/the-ultimate-guide-to-text-fields-in-flutter/
// https://api.flutter.dev/flutter/material/TextField-class.html

import 'package:flutter/material.dart';

// import 'package:flutter/services.dart';
// () => FocusScope.of(context).unfocus(),GestureDetector
import '../../widgets.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: appbarWidget('TextField'),
        body: SingleChildScrollView(
          keyboardDismissBehavior:
              ScrollViewKeyboardDismissBehavior.onDrag, // or ListView
          child: Container(
            padding: const EdgeInsets.all(5),
            width: 300,
            height: 800,
            color: Colors.black12,
            child: const TextField(
              // inputFormatters: [
              //   FilteringTextInputFormatter.allow(RegExp("[0-9]+"))
              // ],
              // maxLines: 2,
              // maxLength: 2,
              // keyboardType: TextInputType.number,
              // obscureText: true,
              // obscuringCharacter: "*",

              cursorColor: Colors.black,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: mainColor,
                prefixIcon: Icon(Icons.search, color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
              // controller: ,
              // onChanged:,
              // onSubmitted: ,
            ),
          ),
        ),
      ),
    );
  }
}
