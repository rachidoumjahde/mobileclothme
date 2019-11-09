import 'package:clothme/core/network/layer/netwrok_mapper.dart';

class FitList extends ListMapAble {
  List<FitResponse> posts;

  @override
  MapAble fromJsonList(List json) {
    posts = json.map((i) => FitResponse.fromJson(i)).toList();
    return this;
  }
}

class FitResponse {
  String userId;
  int id;
  String title;
  String body;

  FitResponse({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory FitResponse.fromJson(Map<String, dynamic> json) {
    return new FitResponse(
      userId: json['userId'].toString(),
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}