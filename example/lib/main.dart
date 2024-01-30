import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:mr_scrollmate/mr_scrollmate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController gridController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PaginatedDataTable2 Example'),
        ),
        body: Row(
          children: [
            Container(
                width: 300,
                height: 700,
                child: MyDataTable(
                  gridController: gridController,
                )),
            Mrscrollmate(
              thumbShape: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              trackHeight: 700,
              topIcon: const Icon(Icons.abc),
              scrollArrowButton: true,
              thumbSpeed: 0.358,
              tableScrollController: gridController,
            ),
          ],
        ),
      ),
    );
  }
}

class MyDataTable extends StatefulWidget {
  final ScrollController gridController;

  const MyDataTable({super.key, required this.gridController});
  @override
  _MyDataTableState createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  final List<Map<String, dynamic>> _data = [
    {'id': 1, 'name': 'John Doe', 'age': 25},
    {'id': 2, 'name': 'Jane Smith', 'age': 30},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    {'id': 3, 'name': 'Bob Johnson', 'age': 22},
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      rowsPerPage: 50,
      scrollController: widget.gridController,
      header: Text('Sample DataTable'),
      columns: [
        DataColumn2(
          label: Text('ID'),
          size: ColumnSize.S,
        ),
        DataColumn2(
          label: Text('Name'),
          size: ColumnSize.L,
        ),
        DataColumn2(
          label: Text('Age'),
          size: ColumnSize.S,
        ),
      ],
      source: MyDataTableSource(_data),
      // Add any other customization options as needed
    );
  }
}

class MyDataTableSource extends DataTableSource {
  final List<Map<String, dynamic>> _data;

  MyDataTableSource(this._data);

  @override
  DataRow getRow(int index) {
    final rowData = _data[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text('${rowData['id']}')),
        DataCell(Text('${rowData['name']}')),
        DataCell(Text('${rowData['age']}')),
      ],
    );
  }

  @override
  int get rowCount => _data.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
