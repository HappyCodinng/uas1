import 'package:flutter/material.dart';
import '../../model/roommate.dart';
import '../../service/roommate.dart';
import '../../widget/roommate/roommate_header.dart';
import '../../widget/roommate/roommate_list.dart';
import '../../widget/roommate/roommate_filter.dart';


class RoommatePage extends StatefulWidget {
  const RoommatePage({super.key});

  @override
  State<RoommatePage> createState() => _RoommatePageState();
}
class _RoommatePageState extends State<RoommatePage> {
  List<Roommate> data = [];
  List<Roommate> filteredData = [];
  bool loading = true;
  String filterKelamin = "Semua";
  String tempfilterKelamin = "Semua";
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadRommate();
  }

  Future<void> loadRommate() async {
    setState(() => loading = true);

    final result = await RoommateService.getRoommates(
      jenisKelamin: filterKelamin,
    );

    if(!mounted) return;

    setState(() {
      data = result;
      filteredData = result;
      loading = false;
    });
  }

  void onSearch(String keyword) {
    final lowerKeyword = keyword.toLowerCase();

    setState(() {
      filteredData = data.where((roommate) {
        final nama = roommate.nama.toLowerCase();
        final kampus = (roommate.kampus ?? '').toLowerCase();

        return nama.contains(lowerKeyword) || kampus.contains(lowerKeyword);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Column(
        children: [

          RoommateHeader(
            controller: searchController,
            onSearch: onSearch,
            onFilterTap: () {
              filterKelamin = tempfilterKelamin;
              searchController.clear();
              loadRommate();
            },
          ),

          RoommateFilter(
            selectedGender: tempfilterKelamin,
            onChanged: (value) {
              setState(() {
                tempfilterKelamin = value;
              });
            },
          ),
          
          const SizedBox(height: 8),

          Expanded(
            child: loading
             ? const Center(
              child: Text(
                "Mendapatkan Data...",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            )
            : RoommateList(data: filteredData),
          ),
        ],
      ),
    );
  }
}