import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerPlugin extends StatefulWidget {
  const ColorPickerPlugin({Key? key}) : super(key: key);

  @override
  _ColorPickerPluginState createState() => _ColorPickerPluginState();
}

class _ColorPickerPluginState extends State<ColorPickerPlugin> {
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: pickerColor,
                  onColorChanged: changeColor,
                  showLabel: true,
                  pickerAreaHeightPercent: 0.8,
                ),
              ),
              const SizedBox(height: 60),
              Text(
                'Color',
                style: TextStyle(color: pickerColor, fontSize: 30),
              ),
              // TextButton(
              //   style: ButtonStyle(
              //     foregroundColor:
              //         MaterialStateProperty.all<Color>(pickerColor),
              //   ),
              //   onPressed: () {
              //     //setState(() => currentColor = pickerColor);
              //     Navigator.of(context).pop();
              //   },
              //   child: Text('Change Color'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
