// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'package:equatable/equatable.dart';

class PostModel extends Equatable {
  const PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };

  @override
  List<Object?> get props => [
        userId,
        id,
        title,
        body,
      ];
}
