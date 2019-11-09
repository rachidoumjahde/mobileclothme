import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';

import 'address.dart';


class Company {
  final String id;
  final String name;
  final String startDate;
  final KtList<Address> address;
  final String headLine;
  final String deliveryInfo;
  final bool doesDelivery;
  final String returnInfo;
  final bool doesReturns;
  final String avatarUrl;


  Company({
    @required this.id,
    @required this.name,
    this.startDate,
    @required this.address,
    this.headLine,
    this.deliveryInfo,
    this.doesDelivery,
    this.returnInfo,
    this.doesReturns,
    this.avatarUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Company &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              startDate == other.startDate &&
              address == other.address &&
              headLine == other.headLine &&
              deliveryInfo == other.deliveryInfo &&
              doesDelivery == other.doesDelivery &&
              returnInfo == other.returnInfo &&
              doesReturns == other.doesReturns &&
              avatarUrl == other.avatarUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      startDate.hashCode ^
      address.hashCode ^
      headLine.hashCode ^
      deliveryInfo.hashCode ^
      doesDelivery.hashCode ^
      returnInfo.hashCode ^
      doesReturns.hashCode ^
      avatarUrl.hashCode;
}

