class Kos {
  final int id;
  final String namaKos;
  final String alamat;
  final String jarak;
  final String tipeKos;
  final int harga;
  final double rating;

  Kos({
    required this.id,
    required this.namaKos,
    required this.alamat,
    required this.jarak,
    required this.tipeKos,
    required this.harga,
    required this.rating,
  });

  factory Kos.fromJson(Map<String, dynamic> json) {
    return Kos(
      id: int.parse(json['id_kos'].toString()),
      namaKos: json['nama_kos'],
      alamat: json['alamat'],
      jarak: json['jarak'] ?? '-',
      tipeKos: json['tipe_kos'],
      harga: int.parse(json['harga'].toString()),
      rating: double.parse(json['rating'].toString()),
    );
  }
}
