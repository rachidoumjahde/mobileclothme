import 'dart:convert';
import 'dart:io';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:http/http.dart' as http;
import '../api_service.dart';


class UserService {
  var endpoint = Api.endpoint;

  // Get User Home Fit Data
  Future<UserModel> getUserFitHomeData(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-user/user-home/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var fitHomeData = UserModel.fromJsonFit(json.decode(response.body));
    // return
    return fitHomeData;
  }

  // Get User Discovery Data
  Future<UserModel> getUserDiscoveryData(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-user/all-brand-fit/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var discoveryData = UserModel.fromJsonDiscovery(json.decode(response.body));
    // return
    return discoveryData;
  }

  // Get User Discovery Data
  Future<UserModel> getUserProfileData(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-user/user-profile/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var profileData = UserModel.fromJson(json.decode(response.body));
    // return
    return profileData;
  }

  Future<UserModel> updateUser(String userId, UserModel userData, String authHeader) async {
    var body = userData.toJson();
    var response = await http.put('$endpoint/mobile-user/user/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var data = UserModel.fromJson(json.decode(response.body));
    // return
    return data;
  }

}