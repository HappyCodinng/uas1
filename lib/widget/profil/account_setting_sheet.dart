import 'package:flutter/material.dart';
import 'package:kostcheck/screen/profil/Lengkapi.dart';
import 'account_setting.dart';

class AccountSettingSheet {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              AccountSettingItem(
                icon: Icons.person,
                title: "Lengkapi Profil",
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => const LengkapiProfilPage(),
                    ),
                  );
                },
              ),

              AccountSettingItem(
                icon: Icons.lock,
                title: "Ganti Password",
                onTap: () {
                  Navigator.pop(context);
                  
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
