import 'dart:convert';
import 'dart:io';
import 'package:clothme/core/provider_state/model/bottom_measurement/bottom_measurement_model.dart';
import 'package:clothme/core/provider_state/model/feet_measurement/feet_measurement_model.dart';
import 'package:clothme/core/provider_state/model/top_measurement/top_measurement_model.dart';
import 'package:http/http.dart' as http;
import '../api_service.dart';

class MeasurementService {
  var endpoint = Api.endpoint;

  /// ********************************** TOP MEASUREMENT SERVICE *********************************
  // Get User Home Fit Data
  Future<TopMeasurementModel> getUserTopMeasurement(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-measurement/top-measurement/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var responseData = TopMeasurementModel.fromJson(json.decode(response.body));
    // return
    return responseData;
  }

  // Get User Home Fit Data
  Future<TopMeasurementModel> updateUserTopMeasurement(String userId, TopMeasurementModel data, String authHeader) async {
    var body = data.toJson();
    var response = await http.put('$endpoint/mobile-measurement/top-measurement/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var responseData = TopMeasurementModel.fromJson(json.decode(response.body));
    // return
    return responseData;
  }

  /// ********************************** BOTTOM MEASUREMENT SERVICE *********************************
  // Get User Home Fit Data
  Future<BottomMeasurementModel> getUserBottomMeasurement(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-measurement/bottom-measurement/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var responseData = BottomMeasurementModel.fromJson(json.decode(response.body));
    // return
    return responseData;
  }

  // Get User Home Fit Data
  Future<BottomMeasurementModel> updateUserBottomMeasurement(String userId, BottomMeasurementModel data, String authHeader) async {
    var body = data.toJson();
    var response = await http.put('$endpoint/mobile-measurement/bottom-measurement/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var responseData = BottomMeasurementModel.fromJson(json.decode(response.body));
    // return
    return responseData;
  }

  /// ********************************** FEET MEASUREMENT SERVICE *********************************
  // Get User Home Fit Data
  Future<FeetMeasurementModel> getUserFeetMeasurement(String userId, String authHeader) async {
    var response = await http.get('$endpoint/mobile-measurement/feet-measurement/$userId',
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var responseData = FeetMeasurementModel.fromJson(json.decode(response.body));
    // return
    return responseData;
  }

  // Get User Home Fit Data
  Future<FeetMeasurementModel> updateUserFeetMeasurement(String userId, FeetMeasurementModel data, String authHeader) async {
    var body = data.toJson();
    var response = await http.put('$endpoint/mobile-measurement/feet-measurement/$userId', body: body,
        // Send authorization headers to the backend.
        headers: {HttpHeaders.authorizationHeader: authHeader});
    // Convert
    var responseData = FeetMeasurementModel.fromJson(json.decode(response.body));
    // return
    return responseData;
  }

/// ********************************** FEET MEASUREMENT SERVICE *********************************
  Future sendMeasurement(String fromId, String toId, String authHeader, dynamic data) async {

  }
}