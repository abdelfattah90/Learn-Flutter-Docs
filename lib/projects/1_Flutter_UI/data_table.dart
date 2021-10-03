import 'package:flutter/material.dart';

import '../../widgets.dart';

class DataTablePage extends StatefulWidget {
  static const int numItems = 5;

  const DataTablePage({Key? key}) : super(key: key);

  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  List<bool> selected =
      List<bool>.generate(DataTablePage.numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('DataTable'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Number'),
                  ),
                ],
                rows: List<DataRow>.generate(
                  DataTablePage.numItems,
                  (int index) => DataRow(
                    color: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      // All rows will have the same selected color.
                      if (states.contains(MaterialState.selected)) {
                        return Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.08);
                      }
                      // Even rows will have a grey color.
                      if (index.isEven) {
                        return Colors.grey.withOpacity(0.3);
                      }
                      return null; // Use default value for other states and odd rows.
                    }),
                    cells: <DataCell>[DataCell(Text('Row $index'))],
                    selected: selected[index],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index] = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Age',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Role',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Ahmed')),
                    DataCell(Text('31')),
                    DataCell(Text('Flutter Developer')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Mousab')),
                    DataCell(Text('29')),
                    DataCell(Text('Network Engineer')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Amr')),
                    DataCell(Text('26')),
                    DataCell(Text('Business Man')),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
