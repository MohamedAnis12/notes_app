import 'package:flutter/material.dart';

class CustomSershIcon extends StatelessWidget {
  const CustomSershIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      child: Center(child: Icon(Icons.search)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withValues(alpha: .05),
      ),
    );
  }
}
