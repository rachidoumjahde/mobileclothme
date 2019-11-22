import 'dart:convert';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:http/http.dart' as http;
import '../api_service.dart';


class UserService {
  var endpoint = Api.endpoint;
  List<UserModel> userModel;

  // User Network Call
  Future<UserModel> getUser(String userId) async {
    var response = await http.get('$endpoint/mobile-user/$userId');
    // Convert
    var fitData = UserModel.fromJson(json.decode(response.body));
    // return
    return fitData;
  }

  Future<UserModel> updateUser(String userId, UserModel userData) async {
    var body = userData.toJson();
    var response = await http.put('$endpoint/mobile-user/$userId', body: body);
    // Convert
    var fitData = UserModel.fromJson(json.decode(response.body));
    // return
    return fitData;
  }

  Future<UserModel> deleteUser(String userId, UserModel userData) async {
    var response = await http.delete('$endpoint/mobile-user/$userId');
    // Convert
    var fitData = UserModel.fromJson(json.decode(response.body));
    // return
    return fitData;
  }

}