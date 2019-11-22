import 'package:flutter/material.dart';

class BrandModel {
  String brandId;
  String brandName;
  String location;
  Image brandImage;
  String ownerName;

  BrandModel(
      {this.brandId,
      this.brandName,
      this.location,
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
              brandImage == other.brandImage &&
              ownerName == other.ownerName;

  @override
  int get hashCode =>
      brandId.hashCode ^
      brandName.hashCode ^
      location.hashCode ^
      brandImage.hashCode ^
      ownerName.hashCode;

  BrandModel.initial()
      : brandId = '',
        brandName = '',
        location = '',
        brandImage = null,
        ownerName = '';

  BrandModel.fromJson(Map<String, dynamic> json) {
    brandId = json['brandId'];
    brandName = json['brandName'];
    location = json['location'];
    brandImage = json['brandImage'];
    ownerName = json['ownerName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandId'] = this.brandId;
    data['brandName'] = this.brandName;
    data['location'] = this.location;
    data['brandImage'] = this.brandImage;
    data['ownerName'] = this.ownerName;
    return data;
  }

  BrandModel.fromJsonDiscovery(Map<String, dynamic> json) {
    brandId = json['brandId'];
    brandName = json['brandName'];
    location = json['location'];
    brandImage = json['brandImage'];
  }

  Map<String, dynamic> toJsonDiscovery() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandId'] = this.brandId;
    data['brandName'] = this.brandName;
    data['location'] = this.location;
    data['brandImage'] = this.brandImage;
    return data;
  }


}
