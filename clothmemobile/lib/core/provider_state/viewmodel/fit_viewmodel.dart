import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/fit/fit_model.dart';
import 'package:clothme/core/provider_state/model/product/product_model.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:clothme/core/service/product/product_service.dart';
import 'package:clothme/core/service/user/user_service.dart';

class FitViewModel {
  ProductService _productService = locator<ProductService>();
  UserService _userService = locator<UserService>();
  String errorMessage;
  List<ProductModel> fitListProductData;
  List<UserModel> fitListUserData;

  // Get All Fit Data
  Future getProductFitList(String userId, String authHeader) async {
    fitListProductData = (await _productService.getAllProductFitViewModel(userId, authHeader)) as List<ProductModel>;
    return fitListProductData;
  }

  // Get One Fit Data
  Future getUserProductDetail(String userId, String productId, String authHeader) async {
    fitListProductData = (await _productService.getOneProductDetail(userId, productId, authHeader)) as List<ProductModel>;
    return fitListProductData;
  }

  // Get User Data
  Future getUserFitList(String userId, String authHeader) async {
    fitListUserData = (await _userService.getUserFitHomeData(userId, authHeader)) as List<UserModel>;
    return fitListUserData;
  }

}