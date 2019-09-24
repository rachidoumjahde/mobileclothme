import 'package:meta/meta.dart';


class MeasurementTop {
  //  variables = {'width': double, 'height': double}
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

  MeasurementTop({
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
    this.waist
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MeasurementTop &&
              runtimeType == other.runtimeType &&
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
              waist == other.waist;

  @override
  int get hashCode =>
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
      waist.hashCode;

}