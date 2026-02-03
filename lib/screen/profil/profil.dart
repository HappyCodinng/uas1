import 'package:flutter/material.dart';
import 'package:kostcheck/model/user.dart';
import '../../widget/profil/profil_header.dart';
import '../../widget/profil/profil_item.dart';
import '../../widget/profil/profil_footer.dart';
import '../../service/auth.dart';
import '../../service/profil_service.dart';

class ProfilePage extends StatefulWidget {
  final User user;

  const ProfilePage({
    super.key,
    required this.user,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late User user;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    loadProfile();
  }

  Future <void> loadProfile() async {
    try {
      final result = await ProfileService.getProfile();
      if(!mounted) return;
      setState(() {
        user = result;
        loading = false;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
}
  @override
  Widget build(BuildContext context) {
    if(loading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Column(
          children: [
            ProfileHeader(user: user),
            const SizedBox(height: 8),
            ProfileMenuItem(
              icon: Icons.history, 
              title: "Riwayat Pembayaran",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.notifications, 
              title: "Pengaturan Notifikasi",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.settings, 
              title: "Pengaturan Akun",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.help,
              title: "Bantuan & Dukungan",
              onTap: () {},
            ),
            ProfileMenuItem(
              icon: Icons.logout,
              title: "keluar",
              onTap: () => AuthService.logout(context),
            ),

            const Spacer(),

            const ProfileFooter(),
          ],
        ),
      ),
    );
  }
}
