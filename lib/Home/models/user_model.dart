import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int userId;
  final String name;
  final String email;
  final String phone;

  const UserModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.phone,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": userId,
        "name": name,
        "email": email,
        "phone": phone,
      };
  @override
  List<Object?> get props => [
        name,
        email,
        phone,
      ];
}
