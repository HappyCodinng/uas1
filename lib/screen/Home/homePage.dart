// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kostcheck/widget/home/kosList.dart';
import '../../../widget/home/header.dart';
import '../../../widget/home/search.dart';
import '../../../widget/home/menuGrid.dart';
import '../../../widget/home/filter.dart';
import '../../../widget/home/fasilitas.dart';
import '../../model/user.dart';

class HomePage extends StatelessWidget {
  final User user;

  const HomePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              const SizedBox(height: 16),
              Search(),
              const SizedBox(height: 20),
              const MenuGrid(),
              const SizedBox(height: 20),
              const FilterSectionWrapper(),
              const SizedBox(height: 20),
              FacilitySection(),
              const SizedBox(height: 20),
              const KosList(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
