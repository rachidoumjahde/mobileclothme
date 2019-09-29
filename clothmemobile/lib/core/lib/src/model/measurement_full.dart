import 'package:meta/meta.dart';


class MeasurementFull {
  //  variables = {'width': double, 'height': double}
  final String id;
  final Map head;
  final Map neck;
  final Map shoulder;
  final Map bust;
  final Map underBust;
  final Map armHole;
  final Map upperArm;
  final Map lowerArm;
  final Map shoulderToWrist;
  final Map torso;
  final Map shoulderToWaist;
  final Map waist;
  final Map hips;
  final Map inseam;
  final Map rise;
  final Map thigh;
  final Map waistToKnee;
  final Map lowerLeg;
  final Map ankleToUnderFeet;
  final Map waistToAnkle;

  MeasurementFull({
    this.id,
    this.head,
    this.neck,
    this.shoulder,
    this.bust,
    this.underBust,
    this.armHole,
    this.upperArm,
    this.lowerArm,
    this.shoulderToWaist,
    this.shoulderToWrist,
    this.torso,
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
          other is MeasurementFull &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              head == other.head &&
              neck == other.neck &&
              shoulder == other.shoulder &&
              bust == other.bust &&
              underBust == other.underBust &&
              armHole == other.armHole &&
              upperArm == other.upperArm &&
              lowerArm == other.lowerArm &&
              shoulderToWrist == other.shoulderToWrist &&
              shoulderToWaist == other.shoulderToWaist &&
              torso == other.torso &&
              waist == other.waist &&
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
      head.hashCode ^
      neck.hashCode ^
      shoulder.hashCode ^
      bust.hashCode ^
      underBust.hashCode ^
      armHole.hashCode ^
      upperArm.hashCode ^
      lowerArm.hashCode ^
      shoulderToWrist.hashCode ^
      shoulderToWaist.hashCode ^
      torso.hashCode ^
      waist.hashCode;

}