import 'package:http/http.dart' as http;
import 'package:clothme/core/provider_state/model/fit/fit_model.dart';
import '../api_service.dart';


class FitService {
  var client = new http.Client();
  var endpoint = Api.endpoint;
  List<FitModel> fitModel;

  // User Network Call
  Future<FitModel> getUserFitProduct(String userId) async {
    var response = await client.get('$endpoint/fitProduct/$userId');
    // Convert and return
//    return User.fromJson(json.decode(response.body));
  }
}