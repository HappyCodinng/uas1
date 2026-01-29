import 'package:flutter/material.dart';
import '../../widget/notifikasi/notif_header.dart';
import '../../widget/notifikasi/notif_list.dart';

class NotifikasiPage extends StatefulWidget {
  const NotifikasiPage({super.key});

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  int unreadCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              NotifHeader(
                unreadCount: unreadCount,
                onClose: () => Navigator.pop(context),
                onMarkAll: () {
                  setState(() => unreadCount = 0);
                },
              ),
              const SizedBox(height: 16),
              const Divider(),
              const Expanded(child: NotifList()),
            ],
          ),
        ),
      ),
    );
  }
}