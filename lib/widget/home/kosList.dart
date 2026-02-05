import 'package:flutter/material.dart';
import '../../service/kos_service.dart';
import 'kosCard.dart';

class KosList extends StatelessWidget {
  const KosList({super.key});

  static ValueNotifier<String?> searchNotifier = ValueNotifier(null);
  static ValueNotifier<String?> fasilitasNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?> (
      valueListenable: searchNotifier,
      builder: (_, search, _) {
        return ValueListenableBuilder<String?> (
          valueListenable: fasilitasNotifier,
          builder: (_, fasilitas, _) {
            return FutureBuilder(
              future: KosService.getKos(
                search: search,
                fasilitas: fasilitas,
              ),
              builder: (context, Snapshot) {
                if(Snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                if(!Snapshot.hasData || Snapshot.data!.isEmpty) {
                  return const Text("Kos Tidak ditemukan");
                }

                return Column(
                  children: Snapshot.data!
                  .map((kos) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: KosCard(kos: kos),
                    ))
                    .toList(),
                );
              },
            );
          }
        );
      },
    );
  }
}
