import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/brand/brand_model.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:clothme/core/service/brand/brand_service.dart';
import 'package:clothme/core/service/user/user_service.dart';

class DiscoverViewModel {
  BrandService _brandService = locator<BrandService>();
  UserService _userService = locator<UserService>();
  String errorMessage;
  List<BrandModel> brandData;
  List<UserModel> userData;
  List<Object> data;

  // Get Discovery List Data
  Future getDiscoveryViewData(String userId, String authHeader) async {
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



}