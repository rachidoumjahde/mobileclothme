import 'package:clothme/core/provider_state/model/common/address.dart';

class UserModel {
  String id;
  String firstName;
  String lastName;
  String dateOfBirth;
  Gender gender;
  List<Address> address;
  Profession profession;
  String headLine;
  String avatarUrl;


  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.gender,
    this.address,
    this.profession,
    this.headLine,
    this.avatarUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is UserModel &&
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