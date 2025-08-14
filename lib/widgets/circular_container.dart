import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height = 5,
    this.width = 5,
    required this.radius,
    this.color,
    this.margin,
    this.child,
    this.gradientcolor,
    this.isgradient = false,
    this.paddingValue = 5,
    this.isShadow = false,
    this.boxShadow
  });
  final double paddingValue;
  final double? width, height;
  final Color? color;
  final Widget? child;
  final bool? isShadow;
  final List<BoxShadow>? boxShadow;
  final double radius;
  final EdgeInsets? margin;
  final Gradient? gradientcolor;
  final bool isgradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(paddingValue),
      decoration: BoxDecoration(
        gradient: isgradient ? gradientcolor : null,
        color: isgradient ? null : color,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: isShadow! ? boxShadow : null,
      ),
      child: child,
    );
  }
}
