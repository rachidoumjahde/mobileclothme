import 'package:flutter/material.dart';

class FitModel {
  String userId;
  String firstName;
  String lastName;
  double userProductFitPercentage;
  String brandId;
  String brandName;
  Image brandLogo;
  String brandLocation;
  String productId;
  Image productImage;
  int productLikesCount;
  int productReviewCount;
  double productPrice;
  double productDiscount;
  double productFitPercentage;

  FitModel({
    this.userId,
    this.firstName,
    this.lastName,
    this.userProductFitPercentage,
    this.brandId,
    this.brandName,
    this.brandLogo,
    this.brandLocation,
    this.productId,
    this.productImage,
    this.productLikesCount,
    this.productReviewCount,
    this.productPrice,
    this.productDiscount,
    this.productFitPercentage
  });

  FitModel.initial()
      : userId = '',
        firstName = '',
        lastName = '',
        userProductFitPercentage = 0.0,
        brandId = '',
        brandName = '',
        brandLogo = null,
        brandLocation = '',
        productId = '',
        productImage = null,
        productLikesCount = 0,
        productReviewCount = 0,
        productPrice = 0.0,
        productDiscount = 0,
        productFitPercentage = 0.0;

  FitModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    userProductFitPercentage = json['userProductFitPercentage'];
    brandId = json['brandId'];
    brandName = json['brandName'];
    brandLogo = json['brandLogo'];
    brandLocation = json['brandLocation'];
    productId = json['productId'];
    productImage = json['productImage'];
    productLikesCount = json['productLikesCount'];
    productReviewCount = json['productReviewCount'];
    productPrice = json['productPrice'];
    productDiscount = json['productDiscount'];
    productFitPercentage = json['productFitPercentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['userProductFitPercentage'] = this.userProductFitPercentage;
    data['brandId'] = this.brandId;
    data['brandName'] = this.brandName;
    data['brandLogo'] = this.brandLogo;
    data['brandLocation'] = this.brandLocation;
    data['productId'] = this.productId;
    data['productImage'] = this.productImage;
    data['productLikesCount'] = this.productLikesCount;
    data['productReviewCount'] = this.productReviewCount;
    data['productPrice'] = this.productPrice;
    data['productDiscount'] = this.productDiscount;
    data['productFitPercentage'] = this.productFitPercentage;
    return data;
  }

}