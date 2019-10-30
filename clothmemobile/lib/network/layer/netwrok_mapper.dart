import 'dart:convert';

// Handler for the network's request.
abstract class RequestMapAble {
  Map<String, dynamic> toJson();
}

// Handler for the network's response.
abstract class MapAble {
  factory MapAble(MapAble type, String data) {
    if (type is BaseMapAble) {
      Map<String, dynamic> mappingData = json.decode(data);
      return type.fromJson(mappingData);
    } else if (type is ListMapAble) {
      Iterable iterableData = json.decode(data);
      return type.fromJsonList(iterableData);
    }

    return null;
  }
}

abstract class BaseMapAble<T> implements MapAble {
  MapAble fromJson(Map<String, dynamic> json);
}

abstract class ListMapAble<T> implements MapAble {
  MapAble fromJsonList(List<dynamic> json);
}

// Handler for the network's error response.
abstract class ErrorMapAble implements BaseMapAble {
  String errorCode;
  String description;
}