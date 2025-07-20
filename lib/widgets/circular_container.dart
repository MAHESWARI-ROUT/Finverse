import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.height = 5,
      this.width = 5,
      required this.radius,
       this.color,
      this.margin,
      this.child});
  final double? width, height;
  final Color? color;
  final Widget? child;
  final double radius;
  final EdgeInsets? margin;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: height,
      width: width,
      margin: margin,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
