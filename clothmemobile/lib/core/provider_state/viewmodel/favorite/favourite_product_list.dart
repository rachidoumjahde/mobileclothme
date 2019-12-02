import 'dart:convert';
import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/brand/brand_model.dart';
import 'package:clothme/core/provider_state/model/product/product_model.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:clothme/core/service/brand/brand_service.dart';
import 'package:clothme/core/service/product/product_service.dart';
import 'package:clothme/core/service/user/user_service.dart';

class FavouriteProductListViewModel {
  BrandService _brandService = locator<BrandService>();
  List<BrandModel> brandData;
  UserService _userService = locator<UserService>();
  List<UserModel> userData;
  ProductService _productService = locator<ProductService>();
  List<ProductModel> product;
  String errorMessage;
  List<Object> data;

  // Get Discovery List Data
  Future getProductListData(String userId, String authHeader) async {
    userData = (await _userService.getUserDiscoveryData(userId, authHeader)) as List<UserModel>;
    brandData = (await _brandService.getAllBrandDiscoveryViewModel(userId, authHeader)) as List<BrandModel>;
    return userData;
  }

  // Get One Fit Data
  Future getOneBrand(String userId, String brandId, String authHeader) async {
    brandData = (await _brandService.getOneBrand(userId, brandId, authHeader)) as List<BrandModel>;
    return brandData;
  }

  // Get One Fit Data
  Future removeOneBrand(String userId, String brandId, String authHeader) async {
    brandData = (await _brandService.removeOneBrand(userId, brandId, authHeader)) as List<BrandModel>;
    return brandData;
  }


  Future<List<ProductModel>> getProduct(String userId, String productId, String authHeader) async {
    var response = await _productService.getOneProduct(userId, productId, authHeader);
    product = (ProductModel.fromJson(json.decode(response.body))) as List<ProductModel>;
    return product;
  }



}