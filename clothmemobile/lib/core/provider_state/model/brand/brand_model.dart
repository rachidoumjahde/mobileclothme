import 'package:flutter/material.dart';

class BrandModel {
  String brandId;
  String brandName;
  String location;
  Image brandLogo;
  Image brandImage;
  String ownerName;

  BrandModel(
      {this.brandId,
      this.brandName,
      this.location,
      this.brandLogo,
      this.brandImage,
      this.ownerName});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandModel &&
          runtimeType == other.runtimeType &&
          brandId == other.brandId &&
          brandName == other.brandName &&
          location == other.location &&
          brandLogo == other.brandLogo &&
          brandImage == other.brandImage &&
          ownerName == other.ownerName;

  @override
  int get hashCode =>
      brandId.hashCode ^
      brandName.hashCode ^
      location.hashCode ^
      brandLogo.hashCode ^
      brandImage.hashCode ^
      ownerName.hashCode;

  BrandModel.initial()
      : brandId = '',
        brandName = '',
        location = '',
        brandLogo = null,
        brandImage = null,
        ownerName = '';

  BrandModel.fromJson(Map<String, dynamic> json) {
    brandId = json['brandId'];
    brandName = json['brandName'];
    location = json['location'];
    brandLogo = json['brandLogo'];
    brandImage = json['brandImage'];
    ownerName = json['ownerName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandId'] = this.brandId;
    data['brandName'] = this.brandName;
    data['location'] = this.location;
    data['brandLogo'] = this.brandLogo;
    data['brandImage'] = this.brandImage;
    data['ownerName'] = this.ownerName;
    return data;
  }

  BrandModel.fromJsonDiscovery(Map<String, dynamic> json) {
    brandId = json['brandId'];
    brandName = json['brandName'];
    location = json['location'];
    brandLogo = json['brandLogo'];
    brandImage = json['brandImage'];
  }

  Map<String, dynamic> toJsonDiscovery() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandId'] = this.brandId;
    data['brandName'] = this.brandName;
    data['location'] = this.location;
    data['brandLogo'] = this.brandLogo;
    data['brandImage'] = this.brandImage;
    return data;
  }

  BrandModel.fromJsonFavouriteList(Map<String, dynamic> json) {
    brandId = json['brandId'];
    brandName = json['brandName'];
    location = json['location'];
    brandLogo = json['brandLogo'];
    brandImage = json['brandImage'];
  }

  Map<String, dynamic> toJsonFavouriteList() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandId'] = this.brandId;
    data['brandName'] = this.brandName;
    data['location'] = this.location;
    data['brandLogo'] = this.brandLogo;
    data['brandImage'] = this.brandImage;
    return data;
  }
}
