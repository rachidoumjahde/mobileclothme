import 'package:clothme/core/provider_state/model/common/review.dart';
import 'package:flutter/material.dart';

class ProductDetailModel {
  String productId;
  String productName;
  String productDetails;
  String productBrand;
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

  ProductDetailModel({
    this.productId,
    this.productName,
    this.productDetails,
    this.productBrand,
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
}