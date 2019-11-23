import 'package:clothme/core/provider_state/model/base_model.dart';


class BottomMeasurementModel extends BaseModel {
  //  variables = {'width': double, 'height': double}
  String id;
  Map waist;
  Map hips;
  Map inseam;
  Map rise;
  Map thigh;
  Map waistToKnee;
  Map lowerLeg;
  Map ankleToUnderFeet;
  Map waistToAnkle;

  BottomMeasurementModel({
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
          other is BottomMeasurementModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
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
      waist.hashCode ^
      inseam.hashCode ^
      rise.hashCode ^
      thigh.hashCode ^
      waistToKnee.hashCode ^
      lowerLeg.hashCode ^
      ankleToUnderFeet.hashCode ^
      waistToAnkle.hashCode;

  BottomMeasurementModel.initial()
      : id = '',
        waist = null,
        inseam = null,
        rise = null,
        thigh = null,
        waistToKnee = null,
        lowerLeg = null,
        ankleToUnderFeet = null,
        waistToAnkle = null;

  BottomMeasurementModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    waist = json['waist'];
    inseam = json['inseam'];
    rise = json['rise'];
    thigh = json['thigh'];
    waistToKnee = json['waistToKnee'];
    lowerLeg = json['lowerLeg'];
    ankleToUnderFeet = json['ankleToUnderFeet'];
    waistToAnkle = json['waistToAnkle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['waist'] = this.waist;
    data['inseam'] = this.inseam;
    data['rise'] = this.rise;
    data['thigh'] = this.thigh;
    data['waistToKnee'] = this.waistToKnee;
    data['lowerLeg'] = this.lowerLeg;
    data['ankleToUnderFeet'] = this.ankleToUnderFeet;
    data['waistToAnkle'] = this.waistToAnkle;
    return data;
  }
}
