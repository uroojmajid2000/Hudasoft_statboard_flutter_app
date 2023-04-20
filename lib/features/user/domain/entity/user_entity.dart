import 'package:equatable/equatable.dart';

class User extends Equatable {
  // final String name, token, otp, phone;
  String email;
  String password;

  User({
    required this.email,
    required this.password,
  });

  factory User.initial() => User(
        email: '',
        password: '',
      );

  @override
  List<Object> get props => [
        email,
        password,
      ];

  @override
  bool get stringify => true;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
    );
  }
}
