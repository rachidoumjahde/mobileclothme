import 'netwrok_mapper.dart';

class ErrorResponse implements ErrorMapAble, BaseMapAble {
  @override
  String description;

  @override
  String errorCode;

  @override
  MapAble fromJson(Map<String, dynamic> json) {
    this.errorCode = json['error_code'];
    this.description = json['description'];

    return this;
  }
}