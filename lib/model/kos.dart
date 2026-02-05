class Kos {
  final int id;
  final String namaKos;
  final String alamat;
  final int jarak;
  final String tipeKos;
  final List<String> fasilitas;
  final int harga;
  final double rating;

  Kos({
    required this.id,
    required this.namaKos,
    required this.alamat,
    required this.jarak,
    required this.tipeKos,
    required this.fasilitas,
    required this.harga,
    required this.rating,
  });

  factory Kos.fromJson(Map<String, dynamic> json) {
    return Kos(
      id: int.parse(json['id_kos'].toString()),
      namaKos: json['nama_kos'],
      alamat: json['alamat'],
      jarak: int.parse(json['jarak'].toString()),
      tipeKos: json['tipe_kos'],
      fasilitas: (json['fasilitas'] as String)
        .split(',')
        .map((e) => e.trim())
        .toList(),
      harga: int.parse(json['harga'].toString()),
      rating: double.parse(json['rating'].toString()),
    );
  }
}
