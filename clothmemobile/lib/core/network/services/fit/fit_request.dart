import 'package:clothme/core/network/layer/netwrok_mapper.dart';

class FitRequest extends RequestMapAble {
  final String userId;

  FitRequest(this.userId);

  @override
  Map<String, dynamic> toJson() => {
    'userId': userId,
  };
}