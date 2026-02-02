import 'package:flutter/material.dart';
import 'package:kostcheck/model/user.dart';
import '../../widget/profil/profil_header.dart';
import '../../widget/profil/profil_kos.dart';
import '../../widget/profil/profil_item.dart';
import '../../widget/profil/profil_footer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key, required User user
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            const ProfileHeader(
              name: "Zulfikar Mansur",
              email: "zulfikarmansur@email.com",
            ),

            const ProfileKosCard(),

            ProfileMenuItem(
              icon: Icons.receipt_long,
              title: "Riwayat Pembayaran",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.notifications_none,
              title: "Pengaturan Notifikasi",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.settings,
              title: "Pengaturan Akun",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.support_agent,
              title: "Bantuan & Dukungan",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.logout,
              title: "Keluar",
              color: Colors.red,
              onTap: () {},
            ),

            const ProfileFooter(),
          ],
        ),
      ),
    );
  }
}
