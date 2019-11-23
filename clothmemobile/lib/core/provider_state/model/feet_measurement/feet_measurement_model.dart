import 'package:clothme/core/provider_state/model/base_model.dart';


class FeetMeasurementModel extends BaseModel {
  //  variables = {'width': double, 'height': double}
  String id;
  Map kneeToUnderFeet;
  Map lowerLeg;
  Map ankleToUnderFeet;
  Map ankle;
  Map feet;

  FeetMeasurementModel({
    this.id,
    this.kneeToUnderFeet,
    this.lowerLeg,
    this.ankleToUnderFeet,
    this.ankle,
    this.feet
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is FeetMeasurementModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              kneeToUnderFeet == other.kneeToUnderFeet &&
              lowerLeg == other.lowerLeg &&
              ankleToUnderFeet == other.ankleToUnderFeet &&
              ankle == other.ankle &&
              feet == other.feet;

  @override
  int get hashCode =>
      id.hashCode ^
      kneeToUnderFeet.hashCode ^
      lowerLeg.hashCode ^
      ankleToUnderFeet.hashCode ^
      ankle.hashCode ^
      feet.hashCode;

  FeetMeasurementModel.initial()
      : id = '',
        kneeToUnderFeet = null,
        lowerLeg = null,
        ankleToUnderFeet = null,
        ankle = null,
        feet = null;

  FeetMeasurementModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kneeToUnderFeet = json['kneeToUnderFeet'];
    lowerLeg = json['lowerLeg'];
    ankleToUnderFeet = json['ankleToUnderFeet'];
    ankle = json['ankle'];
    feet = json['feet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kneeToUnderFeet'] = this.kneeToUnderFeet;
    data['lowerLeg'] = this.lowerLeg;
    data['ankleToUnderFeet'] = this.ankleToUnderFeet;
    data['ankle'] = this.ankle;
    data['feet'] = this.feet;
    return data;
  }
}
