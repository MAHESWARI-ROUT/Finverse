import 'package:flutter/material.dart';

class VerifiedBadge extends StatelessWidget {
  final double size;

  const VerifiedBadge({super.key, this.size = 40}); // default 40px

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFF242833), // dark outer circle
      ),
      child: Center(
        child: Container(
          width: size * 0.65,
          height: size * 0.65,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF1DA1F2), // blue inner circle
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 18, // tick size
          ),
        ),
      ),
    );
  }
}
