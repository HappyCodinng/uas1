import 'package:flutter/material.dart';
import '../../widget/detail_chat/detail_bubble.dart';
import '../../widget/detail_chat/detail_input.dart';

class ChatDetailPage extends StatelessWidget {
  final String name;
  final String kosName;

  const ChatDetailPage({
    super.key,
    required this.name,
    required this.kosName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            ChatDetailPage(name: name, kosName: kosName),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  DetailBubble(
                    text: "Selamat siang, saya tertarik dengan kos anda",
                    isMe: true,
                    time: "09:05",
                  ),
                  DetailBubble(
                    text: "Selamat siang juga, ada yang bisa saya bantu?",
                    isMe: false,
                    time: "09:15",
                  ),
                  DetailBubble(
                    text: "Kamarnya masih tersedia untuk bulan depan?",
                    isMe: true,
                    time: "09:25",
                  ),
                  DetailBubble(
                    text: "Baik, nanti saya tunggu ya",
                    isMe: false,
                    time: "09:30",
                  ),
                ],
              ),
            ),
            const DetailInput(),
          ],
        ),
      ),
    );
  }
}
