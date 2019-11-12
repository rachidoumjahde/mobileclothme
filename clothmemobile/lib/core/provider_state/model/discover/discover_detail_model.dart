import 'package:clothme/core/provider_state/model/product/product_list_model.dart';
import 'package:flutter/material.dart';

class DiscoverDetailModel {
  String brandId;
  String brandName;
  String brandDetails;
  String brandAddress;
  Image brandLogo;
  Image brandCoverImage;
  int brandLocationsCount;
  int totalProductCount;
  int favouriteCount;
  List<ProductListModel> topSelling;

  DiscoverDetailModel({
    this.brandId,
    this.brandName,
    this.brandDetails,
    this.brandAddress,
    this.brandLogo,
    this.brandCoverImage,
    this.brandLocationsCount,
    this.totalProductCount,
    this.favouriteCount,
    this.topSelling
  });
}