import 'package:flutter/material.dart';
import 'menuItem.dart';
import 'menuData.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final width =
        (MediaQuery.of(context).size.width - 16 * 2 - 12) / 2;

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: homeMenus.map((menu) {
        return SizedBox(
          width: width,
          child: MenuItem(
            icon: menu.icon,
            title: menu.title,
            color: menu.color,
            onTap: menu.page == null
                ? null
                : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => menu.page!,
                      ),
                    );
                  },
          ),
        );
      }).toList(),
    );
  }
}
