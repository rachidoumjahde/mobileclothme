
class SignUpModel {
  String firstName;
  String lastName;
  String email;
  String password;

  SignUpModel({this.firstName, this.lastName, this.email, this.password});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SignUpModel &&
              runtimeType == other.runtimeType &&
              firstName == other.firstName &&
              lastName == other.lastName &&
              email == other.email &&
              password == other.password;

  @override
  int get hashCode =>
      firstName.hashCode ^
      lastName.hashCode ^
      email.hashCode ^
      password.hashCode ;

  SignUpModel.initial()
      : firstName = '',
        lastName = '',
        email = '',
        password = '';

  SignUpModel.fromJson(Map<String, dynamic> json) {
    firstName = json['name'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}