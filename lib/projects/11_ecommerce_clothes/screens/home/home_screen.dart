import 'package:flutter/material.dart';
import 'home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleBar(),
              const SearchBar(),
              NewArrival(),
              const BestSell(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarList(),
    );
  }
}
