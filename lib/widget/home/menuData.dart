import 'package:flutter/material.dart';
import 'package:kostcheck/screen/Roommate/roommate.dart';
import 'package:kostcheck/screen/checklist/checklist.dart';
import 'package:kostcheck/screen/split_bill/split_bill.dart';

class MenuData {
  final IconData icon;
  final String title;
  final Color color;
  final Widget? page;

  MenuData({
    required this.icon,
    required this.title,
    required this.color,
    this.page,
  });
}

final List<MenuData> homeMenus = [
  MenuData(
    icon: Icons.people,
    title: "Cari\nRoommate",
    color: Colors.purple,
    page: const RoommatePage(),
  ),
  MenuData(
    icon: Icons.check_circle,
    title: "Checklist\nSurvey",
    color: Colors.green,
    page: const ChecklistPage(),
  ),
  MenuData(
    icon: Icons.grid_view,
    title: "Split Bill",
    color: Colors.orange,
    page: const SplitBillPage(),
  ),
  MenuData(
    icon: Icons.forum,
    title: "Komunitas",
    color: Colors.blue,
  ),
];
