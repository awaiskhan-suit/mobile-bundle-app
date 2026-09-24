class Customer {
  final int? id;
  final String name;
  final String email;
  final String password;
  final String phone_no; // store phone as string to keep the leading 0

  Customer({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone_no,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'phone_no': phone_no,
    };
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      id: map['id'] as int?,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      phone_no: map['phone_no'] as String,
    );
  }
}

