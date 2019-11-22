import 'dart:convert';
import 'dart:io';
import 'package:clothme/core/provider_state/model/product/product_model.dart';
import 'package:http/http.dart' as http;
import '../api_service.dart';


class ProductService {
  var endpoint = Api.endpoint;

  // Get User Product by UserId
  Future<ProductModel> getAllProduct(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-product/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJson(json.decode(response.body));
    return productData;
  }

  // Get User Products by UserId
  Future<ProductModel> getOneProduct(String userId, String productId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-product/$userId/product/$productId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJson(json.decode(response.body));
    return productData;
  }

  // Get User Product by UserId
  Future<ProductModel> postProduct(String userId, ProductModel productModelData, String authHeader) async {
    var body = productModelData.toJson();
    var response = await http.post('$endpoint/mobile-product/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJson(json.decode(response.body));
    return productData;
  }

  // Get User Product by UserId
  Future<ProductModel> deleteOneProduct(String userId, String productId, String authHeader) async {
    var response = await http.delete('$endpoint/mobile-product/$userId/product/$productId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJson(json.decode(response.body));
    return productData;
  }

  // Get User Product by UserId
  Future<ProductModel> updateProduct(String userId, ProductModel productModelData, String authHeader) async {
    var body = productModelData.toJson();
    var response = await http.put('$endpoint/mobile-product/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJson(json.decode(response.body));
    return productData;
  }

}