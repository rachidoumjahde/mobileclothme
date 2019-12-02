import 'dart:convert';
import 'dart:io';
import 'package:clothme/core/provider_state/model/product/product_model.dart';
import 'package:http/http.dart' as http;
import '../api_service.dart';

class ProductService {
  var endpoint = Api.endpoint;


  ///***************************************** PRODUCT CRUD ************************************************
  // Get User Products by UserId
  Future<ProductModel> getOneProductDetail(String userId, String productId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-product/$userId/product/$productId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJson(json.decode(response.body));
    return productData;
  }

  Future<http.Response> getOneProduct(String userId, String productId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-product/$userId/product/$productId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    return response;
  }

//  // Get User Product by UserId
//  Future<ProductModel> newProduct(String userId, ProductModel productModelData, String authHeader) async {
//    var body = productModelData.toJson();
//    var response = await http.post('$endpoint/mobile-product/new-product/$userId', body: body,
//        // Send authorization headers to the backend.
//        headers: {HttpHeaders.authorizationHeader: authHeader});
//    // Convert and return
//    var productData = ProductModel.fromJson(json.decode(response.body));
//    return productData;
//  }

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

  ///***************************************** VIEW MODEL PRODUCT CRUD ************************************************
  // Get User Product by UserId for Fit ViewModel
  Future<ProductModel> getAllProductFitViewModel(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-product/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJsonFit(json.decode(response.body));
    return productData;
  }

  ///***************************************** PRODUCT ORDER ************************************************
  // Order Product by UserId
  Future<ProductModel> orderProduct(String userId, ProductModel data, String authHeader) async {
    var body = data.toJson();
    var response = await http.post('$endpoint/mobile-order/order-prduct/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert and return
    var productData = ProductModel.fromJson(json.decode(response.body));
    return productData;
  }

}