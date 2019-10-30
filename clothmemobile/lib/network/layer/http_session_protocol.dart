import 'package:http/http.dart';
import 'dart:convert';

import 'error_response.dart';
import 'http_request_protocol.dart';
import 'netwrok_mapper.dart';


/// 'HttpSessionProtocol' acts as provider to send requests to the Network.
abstract class HttpSessionProtocol<T> {
  Future<MapAble> request({HttpRequestProtocol service, MapAble responseType});
}

class HttpSession implements HttpSessionProtocol {
  final Client _client;

  HttpSession(this._client);

  @override
  Future<MapAble> request(
      {HttpRequestProtocol service, MapAble responseType}) async {
    final request = HttpRequest(service);

    final requestResponse = await _client.send(request);

    if (requestResponse.statusCode >= 200 &&
        requestResponse.statusCode <= 299) {
      final data = await requestResponse.stream.transform(utf8.decoder).join();
      return MapAble(responseType, data);
    } else {
      final Map<String, dynamic> responseError = {
        "error_code": "${requestResponse.statusCode}",
        "description": "Error retrieving data from the Server."
      };

      return ErrorResponse().fromJson(responseError);
    }
  }
}