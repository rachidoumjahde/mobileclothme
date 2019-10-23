import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

import 'address.dart';
import 'company.dart';


class Brand {
  final String id;
  final Company owner;
  final String name;
  final String startDate;
  final String genderType;
  final KtList<Address> address;
  final String headLine;
  final String returnsInfo;
  final String deliveryInfo;
  final String logoUrl;
  final DateTime createdDate;

  Brand({
    @required this.id,
    @required this.owner,
    @required this.name,
    this.startDate,
    @required this.genderType,
    this.address,
    this.headLine,
    this.returnsInfo,
    this.deliveryInfo,
    @required this.logoUrl,
    @required this.createdDate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Brand &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              owner == other.owner &&
              name == other.name &&
              startDate == other.startDate &&
              genderType == other.genderType &&
              address == other.address &&
              headLine == other.headLine &&
              returnsInfo == other.returnsInfo &&
              deliveryInfo == other.deliveryInfo &&
              logoUrl == other.logoUrl &&
              createdDate == other.createdDate;

  @override
  int get hashCode =>
      id.hashCode ^
      owner.hashCode ^
      name.hashCode ^
      startDate.hashCode ^
      genderType.hashCode ^
      headLine.hashCode ^
      returnsInfo.hashCode ^
      deliveryInfo.hashCode ^
      logoUrl.hashCode ^
      createdDate.hashCode;

}



