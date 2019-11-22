import 'dart:async';
import 'dart:convert';
import 'package:clothme/core/provider_state/model/forgot_password/forgot_password_model.dart';
import 'package:clothme/core/provider_state/model/reset_password/reset_password_model.dart';
import 'package:clothme/core/provider_state/model/signin/signin_model.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:clothme/core/provider_state/model/signup/signup_model.dart';
import '../api_service.dart';


class AuthenticationService {
  var endpoint = Api.endpoint;

  StreamController<UserModel> userController = StreamController<UserModel>();

  // SIGN UP
  Future<SignUpModel> signUpWithEmail(SignUpModel signUpModel) async {
    var body = signUpModel.toJson();
    var response = await http.post('$endpoint/auth/signup', body: body);
    // Convert and return
    return SignUpModel.fromJson(json.decode(response.body));
  }

  Future<SignUpModel> signUpWithFacebook() async {
    // call google app to obtain token
    var token = '';
    // use token to call endpoint
    var response = await http.post('$endpoint/mobile-auth/signup/facebook', body: token);
    // Convert and return
    return SignUpModel.fromJson(json.decode(response.body));
  }

  Future<SignUpModel> signUpWithGoogle() async {
    // call google app to obtain token
    var token = '';
    // use token to call endpoint
    var response = await http.post('$endpoint/mobile-auth/signup/google', body: token);
    // Convert and return
    return SignUpModel.fromJson(json.decode(response.body));
  }

  // SIGN IN
  Future<UserModel> signIn(SignInModel signInModel) async {
    var body = signInModel.toJson();
    var response = await http.post('$endpoint/mobile-auth/signin', body: body);
    var user = UserModel.fromJson(json.decode(response.body));
    // add user to stream
    userController.add(user);
    // return user
    return user;
  }

  Future<http.Response> signOut() async {
    var response = await http.post('$endpoint/mobile-auth/signout');
    // return response
    return response;
  }

  Future<ResetPasswordModel> resetPassword(ResetPasswordModel resetPasswordModel) async {
    var body = resetPasswordModel.toJson();
    var response = await http.post('$endpoint/mobile-auth/resetpassword', body: body);
    var user = ResetPasswordModel.fromJson(json.decode(response.body));
    // return user
    return user;
  }

  Future<ForgotPasswordModel> forgotPassword(ForgotPasswordModel forgotPasswordModel) async {
    var body = forgotPasswordModel.toJson();
    var response = await http.post('$endpoint/mobile-auth/forgotpassword', body: body);
    var user = ForgotPasswordModel.fromJson(json.decode(response.body));
    // return user
    return user;
  }
}