import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';
import 'package:treva_shop_flutter/core.dart';


class Brand {
  final String name;
  final String start_date;
  final GenderType genderType;
  final KtList<Address> address;
  final String headLine;
  final String logoUrl;

  Brand({
    @required this.name,
    this.start_date,
    this.genderType,
    @required this.address,
    this.headLine,
    this.logoUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Brand &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              start_date == other.start_date &&
              genderType == other.genderType &&
              address == other.address &&
              headLine == other.headLine &&
              logoUrl == other.logoUrl;

  @override
  int get hashCode =>
      name.hashCode ^
      start_date.hashCode ^
      genderType.hashCode ^
      headLine.hashCode ^
      logoUrl.hashCode;
}


enum GenderType {
  female,
  male,
  unisex
}

