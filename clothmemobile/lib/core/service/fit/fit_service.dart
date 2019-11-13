import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:clothme/core/provider_state/model/fit/fit_model.dart';
import '../api_service.dart';


class FitService {
  var endpoint = Api.endpoint;
  List<FitModel> fitModel;

  // Fit Network Call
  Future<FitModel> getUserFitProduct(String userId) async {
    var response = await http.get('$endpoint/fitProduct/$userId');
    // Convert and return
    var fitData = FitModel.fromJson(json.decode(response.body));
    return fitData;
  }
}