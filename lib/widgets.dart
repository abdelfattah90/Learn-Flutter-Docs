import 'package:flutter/material.dart';

const mainColor = Color(0xFF925FAF);
//colorFromHex('#25d366'),
// AppBar
AppBar appbarWidget(String title) => AppBar(title: Text(title));

// final Brightness? statusBarBrightness;

// Divider
Divider dividerLine() => const Divider(
      color: Color(0xFF686868),
      thickness: 0.5,
      indent: 20.0,
      endIndent: 20.0,
    );

Center mainTitle(String mainTitle) => Center(
      child: Text(
        mainTitle,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
Center subTitle(String subTitle) => Center(
      child: Text(
        subTitle,
      ),
    );
