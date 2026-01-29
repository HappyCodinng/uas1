class Register {
  final bool success;
  final String message;

  Register({
      required this.success,
      required this.message,
  });

  factory Register.fromJSON(Map<String, dynamic> json) {
    return Register(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
    );
  }
}