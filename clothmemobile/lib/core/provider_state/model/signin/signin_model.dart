
class SignInModel {
  String email;
  String password;
  String errorMessage;
  Map<String, String> data;

  SignInModel({
    this.email,
    this.password,
    this.errorMessage,
    this.data
  });

  SignInModel.initial()
      : email = '',
        password = '',
        errorMessage = '',
        data = Map();

  SignInModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    errorMessage = json['errorMessage'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['firstName'] = this.errorMessage;
    data['lastName'] = this.data;
    return data;
  }
}