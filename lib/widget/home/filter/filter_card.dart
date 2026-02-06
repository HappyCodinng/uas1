import 'package:flutter/material.dart';

class FilterCard extends StatelessWidget {
  final Widget child;

  const FilterCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
