import 'package:get/get.dart';

import 'import_pages.dart';

final getPages = [
  GetPage(name: '/', page: () => const HomePage()),
  GetPage(
    name: '/ProjectFlutterUI',
    page: () => const ProjectFlutterUI(),
  ),
  GetPage(
    name: '/GetDataAPI',
    page: () => const GetDataAPI(),
  ),
  GetPage(
    name: '/SqfliteApp',
    page: () => const SqfliteApp(),
  ),
  GetPage(
    name: '/BmiCalculator',
    page: () => const BmiCalculator(),
  ),
  GetPage(
    name: '/QuizzApp',
    page: () => const QuizzApp(),
  ),
  GetPage(
    name: '/Seacrchable',
    page: () => const SeacrchableApp(),
  ),
  GetPage(
    name: '/UrlLauncherPlugin',
    page: () => const UrlLauncherPlugin(),
  ),

  GetPage(
    name: '/ColorPickerPlugin',
    page: () => const ColorPickerPlugin(),
  ),
  GetPage(
    name: '/PercentIndicatorPlugin',
    page: () => const PercentIndicatorPlugin(),
  ),
  GetPage(
    name: '/ProjectEcommerceClothes',
    page: () => const EcommerceClothes(),
  ),
    // GetPage(
  //   name: '/Project',
  //   page: () => const Project(),
  // ),

  // 1 - flutter UI
  GetPage(name: '/Container', page: () => const ContainerPage()),
  GetPage(name: '/Center', page: () => const CenterPage()),
  GetPage(name: '/Align', page: () => const AlignPage()),
  GetPage(name: '/AspectRatio', page: () => const AspectRatioPage()),
  GetPage(name: '/ConstrainedBox', page: () => const ConstrianBoxPage()),
  GetPage(name: '/Expanded', page: () => const ExpandedPage()),
  GetPage(name: '/Baseline', page: () => const BaselinePage()),
  GetPage(name: '/SizedBox', page: () => const SizedBoxPage()),
  GetPage(name: '/FittedBox', page: () => const FittedBoxPage()),
  GetPage(
    name: '/FractionallySizedBox',
    page: () => const FractionallySizedBoxPage(),
  ),
  GetPage(name: '/LimitedBox', page: () => const LimitedBoxPage()),
  GetPage(name: '/Offstage', page: () => const OffstagePage()),
  GetPage(name: '/Row', page: () => const RowPage()),
  GetPage(name: '/Column', page: () => const ColumnPage()),
  GetPage(name: '/Stack', page: () => const StackPage()),
  GetPage(name: '/IndexedStack', page: () => const IndexedStackPage()),
  GetPage(name: '/Wrap', page: () => const WrapPage()),
  GetPage(name: '/Appbar', page: () => const AppbarPage()),
  GetPage(
    name: '/BottomNavigationBar',
    page: () => const BottomNavigationBarPage(),
  ),
  GetPage(name: '/Drawer', page: () => const DrawerPage()),
  GetPage(name: '/SliverAppBar', page: () => const SliverAppBarPage()),
  GetPage(name: '/TabBarTabBarView', page: () => const TabBarTabBarViewPage()),
  GetPage(name: '/DropdownButton', page: () => const DropdownButtonPage()),
  GetPage(name: '/ElevatedButton', page: () => const ElevatedButtonPage()),
  GetPage(
    name: '/FloatingActionButton',
    page: () => const FloatingActionButtonPage(),
  ),
  GetPage(name: '/IconButton', page: () => const IconButtonPage()),
  GetPage(name: '/OutlinedButton', page: () => const OutlinedButtonPage()),
  GetPage(name: '/TextButton', page: () => const TextButtonPage()),
  GetPage(name: '/TextWidget', page: () => const TextWidgetPage()),
  GetPage(name: '/Checkbox', page: () => const CheckboxPage()),
  GetPage(name: '/DateTimePickers', page: () => const DateTimePickersPage()),
  GetPage(name: '/Radio', page: () => const RadioPage()),
  GetPage(name: '/Slider', page: () => const SliderPage()),
  GetPage(name: '/Switch', page: () => const SwitchPage()),
  GetPage(name: '/TextField', page: () => const TextFieldPage()),
  GetPage(name: '/FormController', page: () => const FormControllerPage()),
  GetPage(name: '/FormValidation', page: () => const FormValidationPage()),
  GetPage(name: '/AlertDialog', page: () => const AlertDialogPage()),
  GetPage(name: '/BottomSheet', page: () => const BottomSheetPage()),
  GetPage(name: '/ExpansionPanel', page: () => const ExpansionPanelPage()),
  GetPage(name: '/SnackBar', page: () => const SnackBarPage()),
  GetPage(name: '/Card', page: () => const CardPage()),
  GetPage(name: '/Chip', page: () => const ChipPage()),
  GetPage(name: '/DataTable', page: () => const DataTablePage()),
  GetPage(name: '/Icon', page: () => const IconPage()),
  GetPage(name: '/Image', page: () => const ImagePage()),
  GetPage(name: '/roundedrectangle', page: () => const RoundedRectanglePage()),
  GetPage(name: '/Tooltip', page: () => const TooltipPage()),
  GetPage(name: '/LayoutBuilder', page: () => const LayoutBuilderPage()),
  GetPage(name: '/GridView', page: () => const GridViewPage()),
  GetPage(name: '/ListView', page: () => const ListViewPage()),
  GetPage(name: '/ListTile', page: () => const ListTilePage()),
  GetPage(
    name: '/ListViewseparated',
    page: () => const ListViewseparatedPage(),
  ),
  GetPage(
    name: '/ListViewBuilderlonglist',
    page: () => const ListViewBuilderlonglistPage(),
  ),
  GetPage(name: '/Table', page: () => const TablePage()),
  GetPage(name: '/Divider', page: () => const DividerPage()),
  GetPage(name: '/Stepper', page: () => const StepperPage()),
  GetPage(name: '/Dismissible', page: () => const DismissiblePage()),
  GetPage(name: '/MaterialPage', page: () => const MaterialPage()),
  GetPage(name: '/Autocomplete', page: () => const AutocompletePage()),
  GetPage(name: '/LoadingTextAssets', page: () => const LoadingTextAssets()),
  GetPage(name: '/Cookbook', page: () => const Cookbook()),

  GetPage(name: '/FutureBuilder', page: () => const FutureBuilderPage()),
  GetPage(name: '/StreamBuilder', page: () => const StreamBuilderPage()),

  //GetPage(name: '/', page: () => Page()),
];
