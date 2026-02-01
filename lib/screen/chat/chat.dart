import 'package:flutter/material.dart';
import '../../widget/chat/chat_header.dart';
import '../../widget/chat/chat_search.dart';
import '../../widget/chat/chat_list.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: const [
            ChatHeader(),
            ChatSearch(),
            Expanded(
              child: ChatList(),
            ),
          ],
        ),
      ),
    );
  }
}
