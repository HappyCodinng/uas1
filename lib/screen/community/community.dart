import 'package:flutter/material.dart';
import '../../widget/community/community_header.dart';
import '../../widget/community/community_tab.dart';
import '../../widget/community/community_post_card.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FB),
      body: Column(
        children: [
          const CommunityHeader(),

          const CommunityTab(),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 8),
              children: const [
                CommunityPostCard(
                  name: "Sarah Wijaya",
                  time: "7 jam",
                  category: "Tips & Trik",
                  title: "Tips Hemat Listrik di Kos",
                  content:
                      "Hemat listrik itu penting. Ganti lampu LED, cabut charger jika tidak digunakan...",
                  like: 24,
                  comment: 2,
                ),

                CommunityPostCard(
                  name: "Andi Pratama",
                  time: "3 jam",
                  category: "Pertanyaan",
                  title: "Rekomendasi Tempat Makan Murah",
                  content:
                      "Ada yang tau tempat makan murah tapi enak di sekitar kampus?",
                  like: 15,
                  comment: 7,
                ),

                CommunityPostCard(
                  name: "Dewi Lestari",
                  time: "1 jam",
                  category: "Jual-Beli",
                  title: "Jual kasur single murah",
                  content:
                      "Masih bagus, jarang dipakai. Minat DM ya.",
                  like: 9,
                  comment: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
