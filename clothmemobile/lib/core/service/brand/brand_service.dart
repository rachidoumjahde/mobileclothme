import 'dart:convert';
import 'dart:io';
import 'package:clothme/core/provider_state/model/brand/brand_model.dart';
import 'package:http/http.dart' as http;
import '../api_service.dart';


class BrandService {
  var endpoint = Api.endpoint;

  /// Get Brands for Discovery ViewModel
  Future<BrandModel> getAllBrandDiscoveryViewModel(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-brand/all-user-product/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var brandData = BrandModel.fromJsonDiscovery(json.decode(response.body));
    // return
    return brandData;
  }

  // Get User Discovery Data
  Future<BrandModel> getUserFavouriteListData(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-brand/favourite-user-brand/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var favouriteData = BrandModel.fromJsonFavouriteList(json.decode(response.body));
    // return
    return favouriteData;
  }

  /// Get User Brands by UserId and BrandId
  Future<BrandModel> getOneBrand(String userId, String brandId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-brand/$userId/brand/$brandId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var brandData = BrandModel.fromJson(json.decode(response.body));
    return brandData;
  }

  // Get User Product by UserId
  Future<BrandModel> removeOneBrand(String userId, String brandId, String authHeader) async {
    var response = await http.delete('$endpoint/mobile-brand/$userId/brand/$brandId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var brandData = BrandModel.fromJson(json.decode(response.body));
    return brandData;
  }

}