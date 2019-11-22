import 'package:flutter/material.dart';

class ProductListModel {
  String productId;
  String productName;
  double productPrice;
  int productDiscount;
  List<Image> productImages;
  int productReviewsCount;
  int productLikesCount;
  int productStockCount;
  int userProductFitCount;

  ProductListModel({
    this.productId,
    this.productName,
    this.productPrice,
    this.productDiscount,
    this.productImages,
    this.productReviewsCount,
    this.productStockCount,
    this.userProductFitCount
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ProductListModel &&
              runtimeType == other.runtimeType &&
              productId == other.productId &&
              productName == other.productName &&
              productPrice == other.productPrice &&
              productDiscount == other.productDiscount &&
              productLikesCount == other.productLikesCount &&
              productImages == other.productImages &&
              productReviewsCount == other.productReviewsCount &&
              productStockCount == other.productStockCount &&
              userProductFitCount == other.userProductFitCount;

  @override
  int get hashCode =>
      productId.hashCode ^
      productName.hashCode ^
      productPrice.hashCode ^
      productDiscount.hashCode ^
      productImages.hashCode ^
      productReviewsCount.hashCode ^
      productStockCount.hashCode ^
      userProductFitCount;

  ProductListModel.initial()
      : productId = '',
        productName = '',
        productPrice = 0.0,
        productDiscount = 0,
        productImages = [],
        productReviewsCount = 0,
        productStockCount = 0,
        userProductFitCount = 0;

  ProductListModel.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    productPrice = json['productPrice'];
    productDiscount = json['productDiscount'];
    productLikesCount = json['productLikesCount'];
    productImages = json['productImages'];
    productReviewsCount = json['productReviewsCount'];
    productStockCount = json['productStockCount'];
    userProductFitCount = json['userProductFitCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['productPrice'] = this.productPrice;
    data['productDiscount'] = this.productDiscount;
    data['productLikesCount'] = this.productLikesCount;
    data['productImages'] = this.productImages;
    data['productReviewsCount'] = this.productReviewsCount;
    data['productStockCount'] = this.productStockCount;
    data['userProductFitCount'] = this.userProductFitCount;
    return data;
  }
}