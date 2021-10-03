import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets.dart';

class ProjectFlutterUI extends StatelessWidget {
  const ProjectFlutterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Widget catalog'),
      body: Scrollbar(
        isAlwaysShown: true,
        showTrackOnHover: true,
        thickness: 15,
        interactive: true,
        radius: const Radius.circular(5),
        child: ListView(children: [
          subTitle('List - Grid - Table'),
          ListTile(
            title: const Text('ListTile'),
            onTap: () => Get.toNamed('/ListTile'),
          ),
          ListTile(
            title: const Text('ListView'),
            onTap: () => Get.toNamed('/ListView'),
          ),
          ListTile(
            title: const Text('ListView separated'),
            onTap: () => Get.toNamed('/ListViewseparated'),
          ),
          ListTile(
            title: const Text('ListViewBuilder long list'),
            onTap: () => Get.toNamed('/ListViewBuilderlonglist'),
          ),
          ListTile(
            title: const Text('GridView'),
            onTap: () => Get.toNamed('/GridView'),
          ),
          ListTile(
            title: const Text('LayoutBuilder'),
            onTap: () => Get.toNamed('/LayoutBuilder'),
          ),
          ListTile(
            title: const Text('Table'),
            onTap: () => Get.toNamed('/Table'),
          ),
          ListTile(
            title: const Text('DataTable'),
            onTap: () => Get.toNamed('/DataTable'),
          ),
          dividerLine(),
          mainTitle('Single-child layout widgets'),
          ListTile(
            title: const Text('Container'),
            onTap: () => Get.toNamed('/Container'),
          ),
          ListTile(
            title: const Text('Center'),
            onTap: () => Get.toNamed('/Center'),
          ),
          ListTile(
            title: const Text('Align'),
            onTap: () => Get.toNamed('/Align'),
          ),
          ListTile(
            title: const Text('Aspect Ratio'),
            onTap: () => Get.toNamed('/AspectRatio'),
          ),
          ListTile(
            title: const Text('Constrained Box'),
            onTap: () => Get.toNamed('/ConstrainedBox'),
          ),
          ListTile(
            title: const Text('Expanded'),
            onTap: () => Get.toNamed('/Expanded'),
          ),
          ListTile(
            title: const Text('Baseline'),
            onTap: () => Get.toNamed('/Baseline'),
          ),
          ListTile(
            title: const Text('SizedBox'),
            onTap: () => Get.toNamed('/SizedBox'),
          ),
          ListTile(
            title: const Text('FittedBox - FractionallySizedBox'),
            onTap: () => Get.toNamed('/FittedBox'),
          ),
          ListTile(
            title: const Text('LimitedBox'),
            onTap: () => Get.toNamed('/LimitedBox'),
          ),
          ListTile(
            title: const Text('Offstage'),
            onTap: () => Get.toNamed('/Offstage'),
          ),
          dividerLine(),
          mainTitle('Multi-child layout widgets'),
          ListTile(
            title: const Text('Row'),
            onTap: () => Get.toNamed('/Row'),
          ),
          ListTile(
            title: const Text('Column'),
            onTap: () => Get.toNamed('/Column'),
          ),
          ListTile(
            title: const Text('Stack - Positioned'),
            onTap: () => Get.toNamed('/Stack'),
          ),
          ListTile(
            title: const Text('IndexedStack'),
            onTap: () => Get.toNamed('/IndexedStack'),
          ),
          ListTile(
            title: const Text('Wrap'),
            onTap: () => Get.toNamed('/Wrap'),
          ),
          dividerLine(),
          ListTile(
            title: const Text('Image'),
            onTap: () => Get.toNamed('/Image'),
          ),
          ListTile(
            title: const Text('Rounded Rectangle - Opacity - LinearGradient'),
            onTap: () => Get.toNamed('/roundedrectangle'),
          ),
          dividerLine(),
          mainTitle('Material Components widgets'),
          subTitle('App structure and navigation'),
          ListTile(
            title: const Text('Appbar'),
            onTap: () => Get.toNamed('/Appbar'),
          ),
          ListTile(
            title: const Text('SliverAppBar'),
            onTap: () => Get.toNamed('/SliverAppBar'),
          ),
          ListTile(
            title: const Text('Bottom Navigation Bar'),
            onTap: () => Get.toNamed('/BottomNavigationBar'),
          ),
          ListTile(
            title: const Text('Drawer'),
            onTap: () => Get.toNamed('/Drawer'),
          ),
          ListTile(
            title: const Text('TabBar & TabBarView'),
            onTap: () => Get.toNamed('/TabBarTabBarView'),
          ),
          dividerLine(),
          subTitle('Buttons'),
          ListTile(
            title: const Text('DropdownButton'),
            onTap: () => Get.toNamed('/DropdownButton'),
          ),
          ListTile(
            title: const Text('ElevatedButton'),
            onTap: () => Get.toNamed('/ElevatedButton'),
          ),
          ListTile(
            title: const Text('FloatingActionButton'),
            onTap: () => Get.toNamed('/FloatingActionButton'),
          ),
          ListTile(
            title: const Text('IconButton'),
            onTap: () => Get.toNamed('/IconButton'),
          ),
          ListTile(
            title: const Text('OutlinedButton'),
            onTap: () => Get.toNamed('/OutlinedButton'),
          ),
          ListTile(
            title: const Text('TextButton'),
            onTap: () => Get.toNamed('/TextButton'),
          ),
          dividerLine(),
          subTitle('Input and selections'),
          ListTile(
            title: const Text('TextWidget'),
            onTap: () => Get.toNamed('/TextWidget'),
          ),
          ListTile(
            title: const Text('Checkbox'),
            onTap: () => Get.toNamed('/Checkbox'),
          ),
          ListTile(
            title: const Text('Date & Time Pickers'),
            onTap: () => Get.toNamed('/DateTimePickers'),
          ),
          ListTile(
            title: const Text('Radio'),
            onTap: () => Get.toNamed('/Radio'),
          ),
          ListTile(
            title: const Text('Slider'),
            onTap: () => Get.toNamed('/Slider'),
          ),
          ListTile(
            title: const Text('Switch'),
            onTap: () => Get.toNamed('/Switch'),
          ),
          ListTile(
            title: const Text('Text Field'),
            onTap: () => Get.toNamed('/TextField'),
          ),
          ListTile(
            title: const Text('Form Controller'),
            onTap: () => Get.toNamed('/FormController'),
          ),
          ListTile(
            title: const Text('Form Validation'),
            onTap: () => Get.toNamed('/FormValidation'),
          ),
          dividerLine(),
          subTitle('Dialogs, alerts, and panels'),
          ListTile(
            title: const Text('AlertDialog'),
            onTap: () => Get.toNamed('/AlertDialog'),
          ),
          ListTile(
            title: const Text('BottomSheet'),
            onTap: () => Get.toNamed('/BottomSheet'),
          ),
          ListTile(
            title: const Text('ExpansionPanel'),
            onTap: () => Get.toNamed('/ExpansionPanel'),
          ),
          ListTile(
            title: const Text('SnackBar'),
            onTap: () => Get.toNamed('/SnackBar'),
          ),
          dividerLine(),
          subTitle('Information displays'),
          ListTile(
            title: const Text('Card'),
            onTap: () => Get.toNamed('/Card'),
          ),
          ListTile(
            title: const Text('Chip'),
            onTap: () => Get.toNamed('/Chip'),
          ),
          ListTile(
            title: const Text('Icon'),
            onTap: () => Get.toNamed('/Icon'),
          ),
          ListTile(
            title: const Text('Tooltip'),
            onTap: () => Get.toNamed('/Tooltip'),
          ),
          dividerLine(),
          ListTile(
            title: const Text('Divider'),
            onTap: () => Get.toNamed('/Divider'),
          ),
          ListTile(
            title: const Text('Stepper'),
            onTap: () => Get.toNamed('/Stepper'),
          ),
          ListTile(
            title: const Text('Dismissible'),
            onTap: () => Get.toNamed('/Dismissible'),
          ),
          dividerLine(),

          ListTile(
            title: const Text('Material Class'),
            onTap: () => Get.toNamed('/MaterialPage'),
          ),
          ListTile(
            title: const Text('Autocomplete'),
            onTap: () => Get.toNamed('/Autocomplete'),
          ),
          ListTile(
            title: const Text('Loading Text From Assets'),
            onTap: () => Get.toNamed('/LoadingTextAssets'),
          ),
          ListTile(
            title: const Text('Cookbook'),
            onTap: () => Get.toNamed('/Cookbook'),
          ),

          // ListTile(
          //   title: const Text('Async widgets - Future Builder'),
          //   onTap: () => Get.toNamed('/FutureBuilder'),
          // ),
          // ListTile(
          //   title: const Text('Async widgets - Stream Builder'),
          //   onTap: () => Get.toNamed('/StreamBuilder'),
          // ),
          // dividerLine(),
          // ListTile(
          //   title: const Text('ThemeData ..'),
          //   onTap: () => Get.toNamed('/ThemeData '),
          // ),
        ]),
      ),
    );
  }
}
