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

}