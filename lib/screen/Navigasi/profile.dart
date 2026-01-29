import 'package:flutter/material.dart';
import 'package:kostcheck/model/user.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required User user});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Profile"));
  }
}
