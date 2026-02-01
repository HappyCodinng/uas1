import 'package:flutter/material.dart';

class CommunityTab extends StatelessWidget {
  const CommunityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _TabItem(title: "Semua", selected: true),
          _TabItem(title: "Tips & Trik"),
          _TabItem(title: "Pertanyaan"),
          _TabItem(title: "Jual-Beli"),
        ],
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String title;
  final bool selected;

  const _TabItem({required this.title, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: selected ? Colors.white : Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
