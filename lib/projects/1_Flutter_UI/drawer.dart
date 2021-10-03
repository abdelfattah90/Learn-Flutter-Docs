import 'package:flutter/material.dart';

// import 'package:get/get.dart';
import '../../widgets.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Drawer'),
      body: const Text('''
      
Drawer in Icone without AppBar 


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      endDrawer: DrawerWidget(),
      body: SafeArea(
          child: Container(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => _drawerKey.currentState!.openEndDrawer(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

      
      '''),
      endDrawer: SafeArea(
        child: Drawer(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              children: [
                const SizedBox(height: 50),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('الرئيسية', style: textFontDrawer()),
                    onTap: () => {}),
                dividerWidget(),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('السيرة النبوية', style: textFontDrawer()),
                    onTap: () => {}),
                dividerWidget(),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('من حياة الصحابة', style: textFontDrawer()),
                    onTap: () {}),
                dividerWidget(),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('أذكار الصباح', style: textFontDrawer()),
                    onTap: () {}),
                dividerWidget(),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('أذكار المساء', style: textFontDrawer()),
                    onTap: () {}),
                dividerWidget(),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('رُكن الأذكار', style: textFontDrawer()),
                    onTap: () {}),
                dividerWidget(),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('أدعية المسلم', style: textFontDrawer()),
                    onTap: () {}),
                dividerWidget(),
                ListTile(
                    leading: const Icon(Icons.book, size: 26),
                    title: Text('من التاريخ', style: textFontDrawer()),
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle textFontDrawer() =>
    const TextStyle(fontSize: 22, fontFamily: 'swissr');

Divider dividerWidget() => const Divider(
    color: Color(0xFF686868), thickness: 0.1, indent: 10.0, endIndent: 30.0);
