import 'package:meta/meta.dart';

class MeasurementFeet {
  //  variables = {'width': double, 'height': double}
  final String id;
  final Map ankle;
  final Map ankleToUnderFeet;
  final double width;
  final double height;

  MeasurementFeet({
    this.id,
    this.ankle,
    this.ankleToUnderFeet,
    this.width,
    this.height,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MeasurementFeet &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              ankle == other.ankle &&
              ankleToUnderFeet == other.ankleToUnderFeet &&
              width == other.width &&
              height == other.height;

  @override
  int get hashCode =>
      id.hashCode ^
      ankle.hashCode ^
      ankleToUnderFeet.hashCode ^
      width.hashCode ^
      height.hashCode;

}