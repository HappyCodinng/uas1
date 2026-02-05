import 'package:flutter/material.dart';
import 'kosList.dart';

class FacilitySection extends StatelessWidget {
  const FacilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: const [
        _FacilityChip("Wifi", Icons.wifi),
        _FacilityChip("Parkir", Icons.local_parking),
        _FacilityChip("Air", Icons.water_drop),
        _FacilityChip("Listrik", Icons.flash_on),
        _FacilityChip("CCTV", Icons.videocam),
        _FacilityChip("AC", Icons.ac_unit),
      ],
    );
  }
}

class _FacilityChip extends StatelessWidget {
  final String value;
  final IconData icon;

  const _FacilityChip(
    this.value, 
    this.icon
  );

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?> (
      valueListenable: KosList.fasilitasNotifier,
      builder: (context, selected, _) {
        final isActive = selected == value;

        return InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            KosList.fasilitasNotifier.value = isActive ? null : value;
          },

          child: Chip(
            avatar: Icon(
              icon,
              size: 16,
              color: isActive ? Colors.blue : null,
            ),
            label: Text(
              value.toUpperCase(),
              style: TextStyle(
                color: isActive ? Colors.blue : null,
              ),
            ),

            backgroundColor: 
              isActive ? Colors.blue.shade50 : Colors.grey.shade200,
          ),
        );
      },
    );
  }
}
