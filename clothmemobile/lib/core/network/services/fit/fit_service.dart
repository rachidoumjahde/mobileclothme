
import 'package:clothme/core/network/layer/http_request_protocol.dart';
import 'package:clothme/core/network/services/fit/fit_request.dart';

class FitService extends HttpRequestProtocol {
  final FitRequest fitRequest;

  FitService(this.fitRequest);

  @override
  String get baseUrl => 'https://api.getclothme.com';

  @override
  ContentEncoding get contentEncoding => ContentEncoding.url;

  @override
  Map<String, String> get headers => {
    "content-type": "application/x-www-form-urlencoded",
    "accept": "application/json",
  };

  @override
  HttpMethod get method => HttpMethod.GET;

  @override
  Map<String, dynamic> get parameters => this.fitRequest.toJson();

  @override
  String get path => '/fits';

}