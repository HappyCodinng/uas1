import 'package:flutter/material.dart';
import 'chat_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        ChatItem(
          name: "Ibu Melati",
          subtitle: "Kos Melati Indah",
          message: "Baik, nanti saya tunggu ya",
          time: "09.30",
        ),
        ChatItem(
          name: "Ibu Sari",
          subtitle: "Kos Abizar",
          message: "Kamarnya masih ada kok",
          time: "13.45",
          unread: 2,
        ),
        ChatItem(
          name: "Pak Budi",
          subtitle: "Kos Kenanga Asri",
          message: "Bisa datang lihat kamar kapan saja",
          time: "09.30",
        ),
      ],
    );
  }
}
