import 'package:clothme/core/provider_state/model/product/product_list_model.dart';
import 'package:flutter/material.dart';

class DiscoverModel {
  String brandId;
  String brandName;
  String location;
  Image brandLogo;
  int userBrandProductFitCount;
  int brandFavouriteCount;
  String brandDetails;
  String brandAddress;
  Image brandCoverImage;
  int brandLocationsCount;
  int totalProductCount;
  int favouriteCount;
  List<ProductListModel> topSelling;

  DiscoverModel({
    this.brandId,
    this.brandName,
    this.location,
    this.brandLogo,
    this.userBrandProductFitCount,
    this.brandFavouriteCount,
    this.brandDetails,
    this.brandAddress,
    this.brandCoverImage,
    this.brandLocationsCount,
    this.totalProductCount,
    this.favouriteCount,
    this.topSelling
  });
}
