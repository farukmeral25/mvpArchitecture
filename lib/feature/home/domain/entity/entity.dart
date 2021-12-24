import 'dart:convert';

class Entity {
  int userId;
  int id;
  String title;
  Entity({
    required this.userId,
    required this.id,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  factory Entity.fromMap(Map<String, dynamic> map) {
    return Entity(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Entity.fromJson(String source) => Entity.fromMap(json.decode(source));
}
