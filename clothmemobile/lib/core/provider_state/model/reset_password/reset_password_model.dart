
class ResetPasswordModel {
  String newPassword;
  String oldPassword;

  ResetPasswordModel({this.newPassword, this.oldPassword});

  ResetPasswordModel.initial()
      : newPassword = '',
        oldPassword = '';

  ResetPasswordModel.fromJson(Map<String, dynamic> json) {
    newPassword = json['newPassword'];
    oldPassword = json['oldPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['newPassword'] = this.newPassword;
    data['oldPassword'] = this.oldPassword;
    return data;
  }
}