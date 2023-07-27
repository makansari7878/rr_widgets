import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';



class BarGraphApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar Graph Example',
      home: BarGraphScreen(),
    );
  }
}

class BarGraphScreen extends StatelessWidget {
  final List<double> data = [5, 10, 15, 20, 25, 30]; // Replace with your data values


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Graph Example'),
      ),
      body: Center(
        child: Container(
          height: 350,
          padding: EdgeInsets.all(16),
          child: BarChart(
            BarChartData(
              barGroups: data.asMap().map((index, value) => MapEntry(
                index,
                BarChartGroupData(
                  showingTooltipIndicators:[0] ,
                  x: index,
                  barRods: [
                    BarChartRodData(
                      y: value,
                      colors: [Colors.blue],
                      width: 16,
                    ),
                  ],
                ),
              ))
                  .values
                  .toList(),
              borderData: FlBorderData(show: true),
              //titlesData: FlTitlesData(show: true),
              //barTouchData: BarTouchData(enabled: true),
            ),
          ),
        ),
      ),




    );

  }
}