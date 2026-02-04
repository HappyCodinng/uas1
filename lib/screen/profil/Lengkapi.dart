import 'package:flutter/material.dart';
import '../../service/roommate_api.dart';
import '../../helper/session.dart';

class LengkapiProfilPage extends StatefulWidget {
  const LengkapiProfilPage({super.key});

  @override
  State<LengkapiProfilPage> createState() => _LengkapiProfilPageState();
}

class _LengkapiProfilPageState extends State<LengkapiProfilPage> {
  final umurCtrl = TextEditingController();
  final kampusCtrl = TextEditingController();
  final deskCtrl = TextEditingController();
  String? jenisKelamin;

  bool loading = true;
  int? userId;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    userId = await SessionHelper.getUserId();
    final data = await RoommateApi.getByUser(userId!);

    if (data != null) {
      umurCtrl.text = data.umur?.toString() ?? '';
      kampusCtrl.text = data.kampus ?? '';
      jenisKelamin = data.jenisKelamin;
      deskCtrl.text = data.deskripsi ?? '';
    }

    setState(() => loading = false);
  }

  Future<void> simpan() async {
    await RoommateApi.save({
      "id_user": userId,
      "umur": int.tryParse(umurCtrl.text),
      "kampus": kampusCtrl.text,
      "jenis_kelamin": jenisKelamin,
      "deskripsi": deskCtrl.text,
    });

    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          // HEADER
          Container(
            padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
            height: 120,
            decoration: const BoxDecoration(
              color: Color(0xFF0D6EFD),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(24),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                const SizedBox(width: 8),
                const Text(
                  "Lengkapi Profil",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          // FORM
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: umurCtrl,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Umur"),
                  ),
                  TextField(
                    controller: kampusCtrl,
                    decoration: const InputDecoration(labelText: "Kampus"),
                  ),
                  DropdownButtonFormField<String>(
                    value: jenisKelamin,
                    items: const [
                      DropdownMenuItem(
                        value: "Laki-laki",
                        child: Text("Laki-laki"),
                      ),
                      DropdownMenuItem(
                        value: "Perempuan",
                        child: Text("Perempuan"),
                      ),
                    ],
                    onChanged: (v) => setState(() => jenisKelamin = v),
                    decoration: const InputDecoration(
                      labelText: "Jenis Kelamin",
                    ),
                  ),
                  TextField(
                    controller: deskCtrl,
                    maxLines: 3,
                    decoration: const InputDecoration(labelText: "Deskripsi"),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: simpan,
                    child: const Text("Simpan"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}