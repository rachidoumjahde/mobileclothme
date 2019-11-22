import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/fit/fit_model.dart';
import 'package:clothme/core/service/product/product_service.dart';
import 'package:clothme/core/service/user/user_service.dart';

class DiscoverViewModel {
  ProductService _productService = locator<ProductService>();
  UserService _userService = locator<UserService>();
  String errorMessage;
  List<FitModel> fitListProductData;
  List<FitModel> fitListUserData;

  // Get All Fit Data
  Future getAllUserProductFit(String userId, String authHeader) async {
    fitListProductData = (await _productService.getAllProduct(userId, authHeader)) as List<FitModel>;
    return fitListProductData;
  }

  // Get One Fit Data
  Future getOneUserProductFit(String userId, String productId, String authHeader) async {
    fitListProductData = (await _productService.getOneProduct(userId, productId, authHeader)) as List<FitModel>;
    return fitListProductData;
  }

  // Get User Data
  Future getUser(String userId, String authHeader) async {
    fitListUserData = (await _userService.getUser(userId, authHeader)) as List<FitModel>;
    return fitListUserData;
  }

}