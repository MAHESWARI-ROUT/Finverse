import 'package:finverse/common/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CompletionChart extends StatelessWidget {
  const CompletionChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Stack(
          fit: StackFit.expand, // both children fill the same size
            alignment: Alignment.center,
      
          children: [
            PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: [
                  PieChartSectionData(
                    color: AppColors.barColor2,
                    value: 70,
                    title: '',
                    radius: 10,
                  ),
                  PieChartSectionData(
                    color: AppColors.pieColor,
                    value: 30,
                    title: '',
                    radius: 10,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 140,
                width: 140, // smaller to be inside
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(border: Border.all()),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    startDegreeOffset: -90,
                    sections: [
                      PieChartSectionData(
                        
                        color: AppColors.barColor1,
                        value: 40,
                        title: '',
                        radius: 10,
                      ),
                      PieChartSectionData(
                      
                        color: AppColors.pieColor,
                        value: 60,
                        title: '',
                        radius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
