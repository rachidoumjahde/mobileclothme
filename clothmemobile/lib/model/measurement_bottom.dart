import 'package:meta/meta.dart';


class MeasurementBottom {
  //  variables = {'width': double, 'height': double}
  final String id;
  final Map waist;
  final Map hips;
  final Map inseam;
  final Map rise;
  final Map thigh;
  final Map waistToKnee;
  final Map lowerLeg;
  final Map ankleToUnderFeet;
  final Map waistToAnkle;

  MeasurementBottom({
    this.id,
    this.waist,
    this.hips,
    this.inseam,
    this.rise,
    this.thigh,
    this.waistToKnee,
    this.lowerLeg,
    this.ankleToUnderFeet,
    this.waistToAnkle,

  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MeasurementBottom &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              waist == other.waist &&
              hips == other.hips &&
              inseam == other.inseam &&
              rise == other.rise &&
              thigh == other.thigh &&
              waistToKnee == other.waistToKnee &&
              lowerLeg == other.lowerLeg &&
              ankleToUnderFeet == other.ankleToUnderFeet &&
              waistToAnkle == other.waistToAnkle;

  @override
  int get hashCode =>
      id.hashCode ^
      waist.hashCode ^
      hips.hashCode ^
      inseam.hashCode ^
      rise.hashCode ^
      thigh.hashCode ^
      waistToKnee.hashCode ^
      lowerLeg.hashCode ^
      ankleToUnderFeet.hashCode ^
      waistToAnkle.hashCode;

}