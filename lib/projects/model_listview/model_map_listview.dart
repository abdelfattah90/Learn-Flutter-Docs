import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: ListView(
        children: homeModelPages
            .map((sec) => HomePages(sec.route, sec.name))
            .toList(),
      ),
    );
  }
}

class HomeModelPages {
  final String route;
  final String name;
  const HomeModelPages({required this.route, required this.name});
}

const homeModelPages = [
  HomeModelPages(route: '/', name: 'Name'),
];

class HomePages extends StatelessWidget {
  final String route;
  final String name;
   const HomePages(
    this.route,
    this.name, {Key? key}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(name), onTap: () => Get.toNamed(route));
  }
}
