import 'package:clothme/core/provider_state/model/base_model.dart';

class TopMeasurementModel extends BaseModel {
  //  variables = {'width': double, 'height': double}
  String id;
  Map head;
  Map neck;
  Map shoulder;
  Map bust;
  Map underBust;
  Map armHole;
  Map upperArm;
  Map lowerArm;
  Map shoulderToWrist;
  Map torso;
  Map shoulderToWaist;
  Map waist;

  TopMeasurementModel({
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
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TopMeasurementModel &&
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
              waist == other.waist;

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

  TopMeasurementModel.initial()
      : id = '',
        head = null,
        neck = null,
        shoulder = null,
        bust = null,
        underBust = null,
        armHole = null,
        upperArm = null,
        lowerArm = null,
        shoulderToWrist = null,
        shoulderToWaist = null,
        torso = null,
        waist = null;

  TopMeasurementModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    head = json['head'];
    neck = json['neck'];
    shoulder = json['shoulder'];
    bust = json['bust'];
    underBust = json['underBust'];
    armHole = json['armHole'];
    upperArm = json['upperArm'];
    lowerArm = json['lowerArm'];
    shoulderToWrist = json['shoulderToWrist'];
    shoulderToWaist = json['shoulderToWaist'];
    torso = json['torso'];
    waist = json['waist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['head'] = this.head;
    data['neck'] = this.neck;
    data['shoulder'] = this.shoulder;
    data['bust'] = this.bust;
    data['underBust'] = this.underBust;
    data['armHole'] = this.armHole;
    data['upperArm'] = this.upperArm;
    data['lowerArm'] = this.lowerArm;
    data['shoulderToWrist'] = this.shoulderToWrist;
    data['shoulderToWaist'] = this.shoulderToWaist;
    data['torso'] = this.torso;
    data['waist'] = this.waist;
    return data;
  }
}
