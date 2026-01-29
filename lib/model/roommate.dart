class Roommate {
  final int id;
  final String nama;
  final int? umur;
  final String? kampus;
  final String? jenisKelamin;
  final String? deskripsi;

  Roommate({
    required this.id,
    required this.nama,
    this.umur,
    this.kampus,
    this.jenisKelamin,
    this.deskripsi,
  });

  factory Roommate.fromJson(Map<String, dynamic> json) {
    return Roommate(
      id: int.parse(json['id'].toString()),
      nama: json['nama'] ?? '-', 
      umur: json['umur'] != null 
        ? int.parse(json['umur'].toString()) 
        : null, 
      kampus: json['kampus'] ?? '-', 
      jenisKelamin: json['jenis_kelamin'] ?? '-', 
      deskripsi: json['deskripsi'] != null &&
        json['deskripsi'].toString().isNotEmpty 
        ? json['deskripsi'] 
        : '-',
    );
  }
}