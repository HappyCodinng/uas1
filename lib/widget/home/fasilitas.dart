import 'package:flutter/material.dart';

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
  final String label;
  final IconData icon;

  const _FacilityChip(this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, size: 16),
      label: Text(label),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
