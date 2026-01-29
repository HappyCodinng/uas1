// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kostcheck/service/auth.dart';
import 'package:kostcheck/widget/login/input.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override

  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {

final namaC = TextEditingController();
final emailC = TextEditingController();
final nohpC = TextEditingController();
final passwordC = TextEditingController();
final confirmC = TextEditingController();
final _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFF0D99FF),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 55),
            decoration: const BoxDecoration(
              color: Color(0xFF0D99FF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'img/logo_app_koscheck.png',
                  width: 90,
                ),
                const SizedBox(height: 10),
                const Text(
                  "KosCheck",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Daftar dan mulai cari kos impianmu!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
              
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Daftar Akun",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    )
                  ),
                  const SizedBox(height: 6),
                  Column(
                    children: [
                      InputField(
                        hint: "Masukan Nama Lengkap", 
                        icon: Icons.person,
                        controller: namaC,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    )
                  ),
                  const SizedBox(height: 6),
                  InputField(
                    hint: "example@gmail.com", 
                    icon: Icons.email, 
                    controller: emailC,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      final emailRegex = RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'
                      );
                      if (!emailRegex.hasMatch(value)) {
                        return "Format email tidak valid";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    "Nomor Telepon",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    )
                  ),
                  const SizedBox(height: 6),
                  Column(
                    children: [
                      InputField(
                        hint: "081234567890",
                        icon: Icons.phone,
                        controller: nohpC,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomor telepon tidak boleh kosong';
                          }

                          final nohpRegex = RegExp(r'^[0-9]+$');
                          if (!nohpRegex.hasMatch(value)) {
                            return "Nomor telepon hanya boleh berisi angka";
                          }
                          
                          if (value.length < 11) {
                            return "Nomor Telepon Terlalu Pendek";
                          }
                          if(value.length > 14) {
                            return "Nomor Telepon Terlalu Panjang";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 15),

                  const Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    )
                  ),
                  const SizedBox(height: 6),
                  Column(
                    children: [
                      InputField(
                        hint: "Buat Password yang Kuat dan lebih dari 6 karakter",
                        icon: Icons.lock,
                        isPassword: true,
                        controller: passwordC,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          if (value.length < 6) {
                            return "Password minimal 6 karakter";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    "Konfirmasi Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    )
                  ),
                  const SizedBox(height: 6),
                  Column(
                    children: [
                      InputField(
                        hint: "Ulangi password",
                        icon: Icons.lock_outline,
                        isPassword: true,
                        controller: confirmC,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Konfirmasi password tidak boleh kosong';
                          }
                          if (value != passwordC.text) {
                            return "Password tidak sesuai";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black
                      ),
                      children: [
                        const TextSpan(
                          text: "Dengan Mendaftar, Anda Menyutujui "
                        ),
                        TextSpan(
                          text: "Syarat & Ketentuan",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextSpan(text: " dan "),
                        TextSpan(
                          text: "Kebijakan Privasi",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D99FF),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }

                        final result = await AuthService.register(
                          namaC.text.trim(),
                          emailC.text.trim(),
                          nohpC.text.trim(),
                          passwordC.text,
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(result.message)
                          ),
                        );

                        if (result.success) {
                          Navigator.pop(context);
                        }
                      },

                      child: const Text(
                        "Daftar Sekarang",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),
                  const Center(child: Text("atau")),
                  const SizedBox(height: 10),

                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
