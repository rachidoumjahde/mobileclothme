import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import '../../core.dart';


class Circle {
  final String id;
  final String name;
  final String tagLine;
  final KtList<User> members;
  final User created_by;
  final DateTime created_date;

  Circle({
    this.id,
    this.name,
    this.tagLine,
    this.members,
    this.created_by,
    this.created_date
  });

}