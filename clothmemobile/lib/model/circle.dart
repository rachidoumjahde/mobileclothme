import 'package:kt_dart/collection.dart';
import 'package:treva_shop_flutter/model/user.dart';


class Circle {
  final String id;
  final String name;
  final String tagLine;
  final KtList<User> members;
  final String avatarUrl;
  final User created_by;
  final DateTime created_date;

  Circle({
    this.id,
    this.name,
    this.tagLine,
    this.members,
    this.avatarUrl,
    this.created_by,
    this.created_date
  });
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Circle &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              tagLine == other.tagLine &&
              members == other.members &&
              created_by == other.created_by &&
              created_date == other.created_date &&
              avatarUrl == other.avatarUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      tagLine.hashCode ^
      members.hashCode ^
      created_by.hashCode ^
      created_date.hashCode ^
      avatarUrl.hashCode;

}