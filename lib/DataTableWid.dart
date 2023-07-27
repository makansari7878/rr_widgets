import 'package:demo_widgets/SnackBarWid.dart';
import 'package:flutter/material.dart';

class DataTableWid extends StatefulWidget {
  const DataTableWid({Key? key}) : super(key: key);

  @override
  State<DataTableWid> createState() => _DataTableWidState();
}

class _DataTableWidState extends State<DataTableWid> {
  int myCurrentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      myCurrentIndex = index;
      if(index == 1){
        myCurrentIndex = 0;
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return SnackBarWid();
        }));
      }
    });
  }

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myCurrentIndex,
        iconSize: 30,
        selectedFontSize: 20,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.cyan,
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.cyan,
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.security),
              backgroundColor: Colors.cyan,
              label: "security"
          ),
        ],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          elevation: 5
      ),

    );
  }
}
