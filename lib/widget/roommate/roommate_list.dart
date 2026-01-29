import 'package:flutter/material.dart';
import 'package:kostcheck/model/roommate.dart';
import 'roommate_card.dart';

class RoommateList extends StatelessWidget {
  final List<Roommate> data;

  const RoommateList({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const Center(
        child: Text("Belum ada Roommate Tersedia."),
      );
    }
    
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return RoommateCard(data: data[index]);
      },
    );
  }
}