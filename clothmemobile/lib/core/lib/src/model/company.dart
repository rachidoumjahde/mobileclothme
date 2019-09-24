import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';
import 'package:treva_shop_flutter/core.dart';


class Company {
  final String firstName;
  final String lastName;
  final String dateOfBirth;
  final Gender gender;
  final KtList<Address> address;
  final String headLine;
  final String avatarUrl;

  Company({
    @required this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.gender,
    @required this.address,
    this.headLine,
    this.avatarUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Company &&
              runtimeType == other.runtimeType &&
              firstName == other.firstName &&
              lastName == other.lastName &&
              dateOfBirth == other.lastName &&
              gender == other.gender &&
              headLine == other.headLine &&
              avatarUrl == other.avatarUrl;

  @override
  int get hashCode =>
      firstName.hashCode ^
      lastName.hashCode ^
      dateOfBirth.hashCode ^
      gender.hashCode ^
      headLine.hashCode ^
      avatarUrl.hashCode;
}

