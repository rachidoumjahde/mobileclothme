import 'package:clothme/core/provider_state/model/common/review.dart';
import 'package:flutter/material.dart';

class ProductModel {
  String productId;
  String productName;
  String productDetails;
  String productBrandName;
  double productPrice;
  int productDiscount;
  int productLikesCount;
  String productColor;
  List<Image> productImages;
  String productCare;
  String productMaterial;
  List<Review> productReviews;
  int productStockCount;
  int userProductFitCount;

  ProductModel({
    this.productId,
    this.productName,
    this.productDetails,
    this.productBrandName,
    this.productPrice,
    this.productDiscount,
    this.productLikesCount,
    this.productColor,
    this.productImages,
    this.productCare,
    this.productMaterial,
    this.productReviews,
    this.productStockCount,
    this.userProductFitCount
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ProductModel &&
              runtimeType == other.runtimeType &&
              productId == other.productId &&
              productName == other.productName &&
              productDetails == other.productDetails &&
              productBrandName == other.productBrandName &&
              productPrice == other.productPrice &&
              productDiscount == other.productDiscount &&
              productLikesCount == other.productLikesCount &&
              productColor == other.productColor &&
              productImages == other.productImages &&
              productCare == other.productCare &&
              productMaterial == other.productMaterial &&
              productReviews == other.productReviews &&
              productStockCount == other.productStockCount &&
              userProductFitCount == other.userProductFitCount;

  @override
  int get hashCode =>
      productId.hashCode ^
      productName.hashCode ^
      productDetails.hashCode ^
      productBrandName.hashCode ^
      productPrice.hashCode ^
      productDiscount.hashCode ^
      productLikesCount.hashCode ^
      productColor.hashCode ^
      productImages.hashCode ^
      productCare.hashCode ^
      productMaterial.hashCode ^
      productReviews.hashCode ^
      productStockCount.hashCode ^
      userProductFitCount;

  ProductModel.initial()
      : productId = '',
        productName = '',
        productDetails = '',
        productBrandName = '',
        productPrice = 0.0,
        productDiscount = 0,
        productLikesCount = 0,
        productColor = '',
        productImages = [],
        productCare = '',
        productMaterial = '',
        productReviews = [],
        productStockCount = 0,
        userProductFitCount = 0;

  ProductModel.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    productDetails = json['productDetails'];
    productBrandName = json['productBrandName'];
    productPrice = json['productPrice'];
    productDiscount = json['productDiscount'];
    productLikesCount = json['productLikesCount'];
    productColor = json['productColor'];
    productImages = json['productImages'];
    productCare = json['productCare'];
    productMaterial = json['productMaterial'];
    productReviews = json['productReviews'];
    productStockCount = json['productStockCount'];
    userProductFitCount = json['userProductFitCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['productDetails'] = this.productDetails;
    data['productBrandName'] = this.productBrandName;
    data['productPrice'] = this.productPrice;
    data['productDiscount'] = this.productDiscount;
    data['productLikesCount'] = this.productLikesCount;
    data['productColor'] =this.productColor;
    data['productImages'] = this.productImages;
    data['productCare'] = this.productCare;
    data['productMaterial'] = this.productMaterial;
    data['productReviews'] = this.productReviews;
    data['productStockCount'] = this.productStockCount;
    data['userProductFitCount'] = this.userProductFitCount;
    return data;
  }

  ProductModel.fromJsonFit(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    productPrice = json['productPrice'];
    productDiscount = json['productDiscount'];
    productLikesCount = json['productLikesCount'];
    productReviews = json['productReviews'];
    productStockCount = json['productStockCount'];
    userProductFitCount = json['userProductFitCount'];
  }

  Map<String, dynamic> toJsonFit() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['productPrice'] = this.productPrice;
    data['productDiscount'] = this.productDiscount;
    data['productLikesCount'] = this.productLikesCount;
    data['productReviews'] = this.productReviews;
    data['productStockCount'] = this.productStockCount;
    data['userProductFitCount'] = this.userProductFitCount;
    return data;
  }
}