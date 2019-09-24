import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';
import 'package:treva_shop_flutter/core.dart';


class User {
  final String id;
  final String firstName;
  final String lastName;
  final String dateOfBirth;
  final Gender gender;
  final KtList<Address> address;
  final Profession profession;
  final String headLine;
  final String avatarUrl;

  User({
    @required this.id,
    @required this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.gender,
    @required this.address,
    this.profession,
    this.headLine,
    this.avatarUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              firstName == other.firstName &&
              lastName == other.lastName &&
              dateOfBirth == other.dateOfBirth &&
              gender == other.gender &&
              profession == other.profession &&
              headLine == other.headLine &&
              avatarUrl == other.avatarUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      dateOfBirth.hashCode ^
      gender.hashCode ^
      profession.hashCode ^
      headLine.hashCode ^
      avatarUrl.hashCode;
}


enum Gender {
  female,
  male
}

enum Profession {
  fashion_designer,
  lawyer,
  doctor,
  student,

}