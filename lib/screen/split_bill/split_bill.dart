import 'package:flutter/material.dart';
import 'package:kostcheck/widget/split_bill/section_title.dart';
import '../../widget/split_bill/split_bill_header.dart';
import '../../widget/split_bill/person_item.dart';
import '../../widget/split_bill/bill_empty.dart';

class SplitBillPage extends StatelessWidget {
  const SplitBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Column(
        children: [
          const SplitBillHeader(),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),

                  SectionTitle(
                    icon: Icons.people, 
                    title: 'Orang 2', 
                    onAdd: () {},
                  ),

                  PersonItem(
                    name: 'Kamu', 
                    amount: '+Rp 0',
                  ),

                  const SizedBox(height: 16),

                  SectionTitle(
                    icon: Icons.attach_money, 
                    title: 'Tagihan (0)', 
                    onAdd: () {},
                  ),

                  const BillEmpty(),
                ],
              ),
            ),
          ),
        ],
      ),
    );  
  }
}
