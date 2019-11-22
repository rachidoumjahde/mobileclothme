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
  List <UserFitProduct> fitProduct;
  int brandFavouriteCount;

  UserModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.gender,
      this.address,
      this.profession,
      this.headLine,
      this.avatarUrl,
      this.fitProduct,
      this.brandFavouriteCount});

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
          fitProduct == other.fitProduct &&
          brandFavouriteCount == other.brandFavouriteCount;

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
      fitProduct.hashCode ^
      brandFavouriteCount.hashCode;

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
        fitProduct = null,
        brandFavouriteCount = 0;

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
    brandFavouriteCount = json['brandFavouriteCount'];
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
    data['brandFavouriteCount'] = this.brandFavouriteCount;
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

  UserModel.fromJsonDiscovery(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['name'];
    lastName = json['lastName'];
    avatarUrl = json['avatarUrl'];
    fitProduct = json['fitProduct'];
  }

  Map<String, dynamic> toJsonDiscovery() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['avatarUrl'] = this.avatarUrl;
    data['fitProduct'] = this.fitProduct;
    return data;
  }

}


// Class for fit Product
class UserFitProduct {
  String productId;
  String brandId;
  String fitPercentage;
  int userBrandProductFitCount;

  UserFitProduct(this.productId, this.brandId, this.fitPercentage,
      this.userBrandProductFitCount);

  UserFitProduct.initial()
      : productId = '',
        brandId = '',
        fitPercentage = '',
        userBrandProductFitCount = 0;


  UserFitProduct.fromJson(Map<String, dynamic> json)
      : productId = json['productId'],
        brandId = json['brandId'],
        fitPercentage = json['fitPercentage'],
        userBrandProductFitCount = json['userBrandProductFitCount'];

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'brandId': brandId,
        'fitPercentage': fitPercentage,
        'userBrandProductFitCount': userBrandProductFitCount
      };
}

enum Gender { female, male }

enum Profession {
  fashion_designer,
  lawyer,
  doctor,
  student,
}
