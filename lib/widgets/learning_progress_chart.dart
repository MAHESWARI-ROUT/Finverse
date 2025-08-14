import 'package:finverse/common/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LearningProgressChart extends StatelessWidget {
  const LearningProgressChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox.expand(
        child: BarChart(
          BarChartData(
            borderData: FlBorderData(
              border: Border(
                top: BorderSide(color: AppColors.texthint, width: 1),
                right: BorderSide(color: AppColors.texthint, width: 1),
                left: BorderSide(color: AppColors.texthint, width: 1),
                bottom: BorderSide(color: AppColors.texthint, width: 1),
              ),
            ),
            gridData: FlGridData(
              drawHorizontalLine: true,
              drawVerticalLine: true,
              getDrawingHorizontalLine: (value) => FlLine(
                color: AppColors.texthint, 
                strokeWidth: 1,
                dashArray: null, 
              ),
              getDrawingVerticalLine: (value) => FlLine(
                color: AppColors.texthint, 
                strokeWidth: 1,
                dashArray: null, 
              ),
            ),
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                    toY: 8,
                    color: AppColors.barColor1,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  BarChartRodData(
                    toY: 6,
                    color: AppColors.barColor2,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                    toY: 5,
                    color: AppColors.barColor1,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  BarChartRodData(
                    toY: 8,
                    color: AppColors.barColor2,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                    toY: 3,
                    color: AppColors.barColor1,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  BarChartRodData(
                    toY: 4,
                    color: AppColors.barColor2,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                    toY: 7,
                    color: AppColors.barColor1,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  BarChartRodData(
                    toY: 4,
                    color: AppColors.barColor2,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
              ),
            ],
            titlesData: FlTitlesData(show: false),
          ),
        ),
      ),
    );
  }
}
