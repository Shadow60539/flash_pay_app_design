import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Overview",
              textAlign: TextAlign.left,
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "JosefinSans",
              )),
          AspectRatio(
            aspectRatio: 2.5,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: 800,
                child: LineChart(
                  sampleData1(),
                  swapAnimationDuration: const Duration(milliseconds: 250),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // return AspectRatio(
    //   aspectRatio: 2,
    //   child: SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child: Container(
    //       width: 50000,
    //       decoration: BoxDecoration(boxShadow: [
    //         BoxShadow(
    //           color: Colors.grey.withOpacity(0.9),
    //         ),
    //       ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(left: 20),
    //             child: Text("Overview",
    //                 textAlign: TextAlign.left,
    //                 style: new TextStyle(
    //                   fontSize: 25.0,
    //                   color: Colors.black,
    //                   fontWeight: FontWeight.bold,
    //                   fontFamily: "JosefinSans",
    //                 )),
    //           ),
    //           Container(
    //             width: 800,
    //             child: LineChart(
    //               sampleData1(),
    //               swapAnimationDuration: const Duration(milliseconds: 250),
    //             ),
    //           ),
    //         ],
    //       ),
    //       padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
    //     ),
    //   ),
    // );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 15,
          getTextStyles: (value) => const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
          getTitles: (double value) {
            switch (value.toInt()) {
              case 1:
                return 'Jan';
              case 2:
                return 'Feb';
              case 3:
                return 'Mar';
              case 4:
                return 'Apr';
              case 5:
                return 'May';
              case 6:
                return 'Jun';
              case 7:
                return 'Jul';
              case 8:
                return 'Aug';
              case 9:
                return 'Sept';
              case 10:
                return 'Oct';
              case 11:
                return 'Nov';
              case 12:
                return 'Dec';
            }
            return '';
          },
          margin: 10,
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 14,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(2, 0.2),
        FlSpot(3, 1.4),
        FlSpot(4, 0.5),
        FlSpot(5, 2.2),
        FlSpot(6, 1.8),
        FlSpot(7, 0.3),
        FlSpot(8, 1.8),
        FlSpot(9, 1.8),
        FlSpot(10, 1.8),
        FlSpot(11, 1.8),
        FlSpot(12, 1.8),
      ],
      isCurved: true,
      colors: [
        const Color(0xfff87607),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
    ];
  }
}
