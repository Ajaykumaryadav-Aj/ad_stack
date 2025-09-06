
import 'package:ad_stack/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Over All Performance\nThe Years',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Pending Done (Red line)
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Pending Done',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 240, 103, 93)),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  // Project Done (Blue line)
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 4, 1, 77),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Project Done',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: true),
                titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      interval: 10,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                          case 10:
                          case 20:
                          case 30:
                          case 40:
                          case 50:
                            return Text(value.toInt().toString());
                          default:
                            return Container();
                        }
                      },
                    )),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true, // Show bottom titles for years
                        reservedSize: 30,
                        interval: 1, // Ensure one label per year
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 20),
                                child: Text('2015'),
                              );
                            case 1:
                              return const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text('2016'),
                              );
                            case 2:
                              return const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text('2017'),
                              );
                            case 3:
                              return const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text('2018'),
                              );
                            case 4:
                              return const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text('2019'),
                              );
                            case 5:
                              return const Padding(
                                padding: EdgeInsets.only(top: 8.0, right: 25),
                                child: Text('2020'),
                              );
                            default:
                              return Container();
                          }
                        },
                      ),
                    ),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(
                      showTitles: false,
                    )),
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false))),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(
                      color: const Color.fromARGB(255, 122, 125, 127),
                      width: 1),
                ),
                minX: 0,
                maxX: 5,
                minY: 0,
                maxY: 50,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 25),
                      const FlSpot(1, 30),
                      const FlSpot(2, 15),
                      const FlSpot(3, 40),
                      const FlSpot(4, 35),
                      const FlSpot(5, 45),
                    ],
                    isCurved: true,
                    color: Colors.red,
                    barWidth: 4,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(
                        show: true, color: Colors.red.withOpacity(0.3)),
                  ),
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 30),
                      const FlSpot(1, 25),
                      const FlSpot(2, 35),
                      const FlSpot(3, 30),
                      const FlSpot(4, 45),
                      const FlSpot(5, 40),
                    ],
                    isCurved: true,
                    color: const Color.fromARGB(255, 4, 1, 77),
                    barWidth: 4,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(
                        show: true, color: Colors.blue.withOpacity(0.3)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
