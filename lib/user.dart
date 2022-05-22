import 'dart:convert';
List<User> postFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

class User {
  final String? id;
  final String firstname;
  final String lastname;
  final String email;
  final String phone;
  final String sexe;


  User(
      {required this.id, required this.firstname, required this.lastname, required this.email,
        required this.phone, required this.sexe});


  @override
  String toString() {
    return 'User{id: $id, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, sexe: $sexe}';
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      email: json['email'],
      phone: json['phone'],
      sexe: json['sexe'],
    );
  }
}
