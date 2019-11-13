import 'package:clothme/core/provider_state/model/common/address.dart';

class UserModel {
  String id;
  String firstName;
  String lastName;
  String dateOfBirth;
  String gender;
  List<Address> address;
  String profession;
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
              address == other.address &&
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
      address.hashCode ^
      gender.hashCode ^
      profession.hashCode ^
      headLine.hashCode ^
      avatarUrl.hashCode;

  UserModel.initial()
      : id = '',
        firstName = '',
        lastName = '',
        dateOfBirth = '',
        gender = '',
        address = [],
        profession = '',
        headLine = '',
        avatarUrl = '';

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['name'];
    lastName = json['lastName'];
    dateOfBirth = json['dateOfBirth'];
    address = json['address'];
    gender = json['gender'];
    profession = json['profession'];
    headLine = json['headLine'];
    avatarUrl = json['avatarUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['address'] = this.address;
    data['gender'] = this.gender;
    data['profession'] = this.profession;
    data['headLine'] = this.headLine;
    data['avatarUrl'] = this.avatarUrl;
    return data;
  }
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