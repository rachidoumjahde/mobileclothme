import 'package:clothme/core/provider_state/model/common/address.dart';
import 'package:json_annotation/json_annotation.dart';

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
  UserFitProduct fitProduct;

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
    this.fitProduct
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
              avatarUrl == other.avatarUrl &&
              fitProduct == other.fitProduct;

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
      avatarUrl.hashCode ^
      fitProduct.hashCode;

  UserModel.initial()
      : id = '',
        firstName = '',
        lastName = '',
        dateOfBirth = '',
        gender = '',
        address = [],
        profession = '',
        headLine = '',
        avatarUrl = '',
        fitProduct = null;

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
    fitProduct = json['fitProduct'];
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
    data['fitProduct'] = this.fitProduct;
    return data;
  }

  UserModel.fromJsonFit(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['name'];
    lastName = json['lastName'];
    profession = json['profession'];
    headLine = json['headLine'];
    avatarUrl = json['avatarUrl'];
    fitProduct = json['fitProduct'];
  }

  Map<String, dynamic> toJsonFit() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['profession'] = this.profession;
    data['headLine'] = this.headLine;
    data['avatarUrl'] = this.avatarUrl;
    data['fitProduct'] = this.fitProduct;
    return data;
  }

  factory UserModel.fromJsonFitt(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      firstName: json['title'] as String,
      lastName: json['thumbnailUrl'] as String,
    );
  }
}

class UserFitProduct {
  String productId;
  String fitPercentage;

  UserFitProduct(this.productId, this.fitPercentage);

  UserFitProduct.initial()
      : productId = '',
        fitPercentage = '';

  UserFitProduct.fromJson(Map<String, dynamic> json)
      : productId = json['productId'],
        fitPercentage = json['fitPercentage'];

  Map<String, dynamic> toJson() => {
      'productId': productId,
      'fitPercentage': fitPercentage,
  };
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