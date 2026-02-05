import 'package:flutter/material.dart';
import '../../service/kos_service.dart';
import '../../model/kos.dart';
import 'kosCard.dart';

class KosList extends StatelessWidget {
  const KosList({super.key});

  static ValueNotifier<String?> searchNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?> (
      valueListenable: searchNotifier,
      builder: (context, keyword, _) {
        return FutureBuilder<List<Kos>>(
          future: KosService.getKos(search: keyword),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Text("Kos tidak ditemukan");
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
      },
    );
  }
}
