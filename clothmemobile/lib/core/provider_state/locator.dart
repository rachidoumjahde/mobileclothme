import 'package:clothme/UI/fit/FitHome.dart';
import 'package:clothme/core/provider_state/model/brand_list/brand_list_model.dart';
import 'package:clothme/core/provider_state/model/forgot_password/forgot_password_model.dart';
import 'package:clothme/core/provider_state/model/profile/profile_model.dart';
import 'package:clothme/core/provider_state/model/reset_password/reset_password_model.dart';
import 'package:clothme/core/provider_state/model/search/search_model.dart';
import 'package:clothme/core/provider_state/model/signin/signin_model.dart';
import 'package:clothme/core/provider_state/model/signup/signup_model.dart';
import 'package:clothme/core/service/fit/fit_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services
  locator.registerLazySingleton(() => FitService());


  // Register models
  locator.registerFactory(() => SignUpModel());
  locator.registerFactory(() => SignInModel());
  locator.registerFactory(() => ForgotPasswordModel());
  locator.registerFactory(() => ResetPasswordModel());
  locator.registerFactory(() => FitHome());
  locator.registerFactory(() => SearchModel());
  locator.registerFactory(() => BrandListModel());
  locator.registerFactory(() => ProfileModel());
}