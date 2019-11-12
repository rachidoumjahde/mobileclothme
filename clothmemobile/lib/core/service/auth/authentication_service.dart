import 'dart:async';
import 'dart:ffi';
import 'package:clothme/core/provider_state/model/forgot_password/forgot_password_model.dart';
import 'package:clothme/core/provider_state/model/reset_password/reset_password_model.dart';
import 'package:clothme/core/provider_state/model/signin/signin_model.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:clothme/core/provider_state/model/signup/signup_model.dart';
import '../api_service.dart';


class AuthenticationService {
  var client = new http.Client();
  var endpoint = Api.endpoint;

  StreamController<UserModel> userController = StreamController<UserModel>();

  Future<SignUpModel> signUpWithEmail(SignUpModel signUpModel) async {

  }

  Future<SignUpModel> signUpWithFacebook(SignUpModel signUpModel) async {

  }

  Future<SignUpModel> signUpWithGoogle(SignUpModel signUpModel) async {

  }

  Future<SignInModel> signIn(SignInModel signInModel) async {

  }

  Future<Void> signOut() async {

  }

  Future<ResetPasswordModel> resetPassword(ResetPasswordModel resetPasswordModel) async {

  }

  Future<ForgotPasswordModel> forgotPassword(ForgotPasswordModel forgotPasswordModel) async {

  }

//  StreamController<User> userController = StreamController<User>();
//
//  Future<bool> login(int userId) async {
//    var fetchedUser = await _api.getUserProfile(userId);
//
//    var hasUser = fetchedUser != null;
//    if(hasUser) {
//      userController.add(fetchedUser);
//    }
//
//    return hasUser;
//  }
}