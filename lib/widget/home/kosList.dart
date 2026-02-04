import 'package:flutter/material.dart';
import '../../service/kos_service.dart';
import '../../model/kos.dart';
import 'kosCard.dart';

class KosList extends StatelessWidget {
  const KosList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Kos>>(
      future: KosService.getKos(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text("Kos belum tersedia");
        }

        return Column(
          children: snapshot.data!
              .map((kos) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: KosCard(kos: kos),
                  ))
              .toList(),
        );
      },
    );
  }
}
