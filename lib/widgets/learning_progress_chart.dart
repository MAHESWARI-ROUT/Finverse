import 'package:finverse/common/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LearningProgressChart extends StatelessWidget {
  const LearningProgressChart({super.key});

  @override
  Widget build(BuildContext context) {
    final barGroups = [
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
        x: 1,
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
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
            toY: 6,
            color: AppColors.barColor1,
            borderRadius: BorderRadius.circular(0),
          ),
          BarChartRodData(
            toY: 5,
            color: AppColors.barColor2,
            borderRadius: BorderRadius.circular(0),
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
            toY: 4,
            color: AppColors.barColor1,
            borderRadius: BorderRadius.circular(0),
          ),
          BarChartRodData(
            toY: 7,
            color: AppColors.barColor2,
            borderRadius: BorderRadius.circular(0),
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(
            toY: 2,
            color: AppColors.barColor1,
            borderRadius: BorderRadius.circular(0),
          ),
          BarChartRodData(
            toY: 3,
            color: AppColors.barColor2,
            borderRadius: BorderRadius.circular(0),
          ),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barRods: [
          BarChartRodData(
            toY: 9,
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
        x: 8,
        barRods: [
          BarChartRodData(
            toY: 7,
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
        x: 9,
        barRods: [
          BarChartRodData(
            toY: 5,
            color: AppColors.barColor1,
            borderRadius: BorderRadius.circular(0),
          ),
          BarChartRodData(
            toY: 7,
            color: AppColors.barColor2,
            borderRadius: BorderRadius.circular(0),
          ),
        ],
      ),
      BarChartGroupData(
        x: 10,
        barRods: [
          BarChartRodData(
            toY: 4,
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
      // Add more BarChartGroupData if needed
    ];

    const int visibleGroupCount = 7;
    const double groupWidth = 50.0;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: barGroups.length * groupWidth,
          height: 300, // Adjust the height as needed
          child: BarChart(
            BarChartData(
              borderData: FlBorderData(show: false),
              gridData: FlGridData(
                drawHorizontalLine: false,
                drawVerticalLine: false,
              ),
              barGroups: barGroups,
              titlesData: FlTitlesData(show: false),
            ),
          ),
        ),
      ),
    );
  }
}
