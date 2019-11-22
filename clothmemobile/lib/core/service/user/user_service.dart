import 'dart:convert';
import 'dart:io';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:http/http.dart' as http;
import '../api_service.dart';


class UserService {
  var endpoint = Api.endpoint;

  // Get User Home Fit Data
  Future<UserModel> getUserFitHomeData(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-user/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var fitData = UserModel.fromJsonFit(json.decode(response.body));
    // return
    return fitData;
  }

  // Get User Discovery Data
  Future<UserModel> getUserDiscoveryData(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-user/all-user-product/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var fitData = UserModel.fromJsonDiscovery(json.decode(response.body));
    // return
    return fitData;
  }

  Future<UserModel> updateUser(String userId, UserModel userData, String authHeader) async {
    var body = userData.toJsonFit();
    var response = await http.put('$endpoint/mobile-user/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var fitData = UserModel.fromJson(json.decode(response.body));
    // return
    return fitData;
  }

}