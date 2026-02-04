class User {
  final int id;
  final String nama;
  final String email;

  User({
    required this.id,
    required this.nama,
    required this.email,
  });

  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
      id: json['id'], 
      nama: json['nama'], 
      email: json['email']
    );
  }
}