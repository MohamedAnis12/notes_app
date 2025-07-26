import 'package:flutter/material.dart';

class CustomSershIcon extends StatelessWidget {
  const CustomSershIcon({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 45,
        width: 45,
        child: Center(child: Icon(icon)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withValues(alpha: .05),
        ),
      ),
    );
  }
}
