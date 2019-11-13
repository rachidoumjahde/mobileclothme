import 'package:flutter/material.dart';

class DiscoverModel {
  String brandId;
  String brandName;
  String location;
  Image brandLogo;
  int userBrandProductFitCount;
  int brandFavouriteCount;

  DiscoverModel({
    this.brandId,
    this.brandName,
    this.location,
    this.brandLogo,
    this.userBrandProductFitCount,
    this.brandFavouriteCount
  });
}
