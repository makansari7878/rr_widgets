import 'package:flutter/material.dart';

class DataTableWid extends StatefulWidget {
  const DataTableWid({Key? key}) : super(key: key);

  @override
  State<DataTableWid> createState() => _DataTableWidState();
}

class _DataTableWidState extends State<DataTableWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Table Widget"),backgroundColor: Colors.purpleAccent,),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          child: Container(
            child: DataTable(
              columns: [
                DataColumn(label: Text('Car Make')),
                DataColumn(label: Text('Model')),
                DataColumn(label: Text('Price')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('Honda')),
                    DataCell(Text('2010')),
                    DataCell(Text('5000')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Honda')),
                    DataCell(Text('2011')),
                    DataCell(Text('6000')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Honda')),
                    DataCell(Text('2012')),
                    DataCell(Text('7000')),
                  ],
                ),
              ],


            ),
          ),
        ),
      ),
    );
  }
}
