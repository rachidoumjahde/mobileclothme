import 'package:meta/meta.dart';

class Address {
  final String type;
  final String streetNumber;
  final String streetName;
  final String city;
  final String stateProvince;
  final String country;

  Address({
    @required this.type,
    this.streetNumber,
    this.streetName,
    @required this.city,
    this.stateProvince,
    @required this.country,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Address &&
              runtimeType == other.runtimeType &&
              type == other.type &&
              streetNumber == other.streetNumber &&
              streetName == other.streetName &&
              city == other.city &&
              stateProvince == other.stateProvince &&
              country == other.country;

  @override
  int get hashCode =>
      type.hashCode ^
      streetName.hashCode ^
      streetNumber.hashCode ^
      city.hashCode ^
      stateProvince.hashCode ^
      country.hashCode;
}

