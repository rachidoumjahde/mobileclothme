import 'package:clothme/UI/fit/FitHome.dart';
import 'package:clothme/core/provider_state/model/brand/brand_list_model.dart';
import 'package:clothme/core/provider_state/model/discover/discover_detail_model.dart';
import 'package:clothme/core/provider_state/model/forgot_password/forgot_password_model.dart';
import 'package:clothme/core/provider_state/model/product/product_list_model.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:clothme/core/provider_state/model/reset_password/reset_password_model.dart';
import 'package:clothme/core/provider_state/model/discover/discover_model.dart';
import 'package:clothme/core/provider_state/model/signin/signin_model.dart';
import 'package:clothme/core/provider_state/model/signup/signup_model.dart';
import 'package:clothme/core/service/api_service.dart';
import 'package:clothme/core/service/fit/fit_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services
  locator.registerLazySingleton(() => FitService());
  locator.registerLazySingleton(() => Api());


  // Register models
  locator.registerFactory(() => SignUpModel());
  locator.registerFactory(() => SignInModel());
  locator.registerFactory(() => ForgotPasswordModel());
  locator.registerFactory(() => ResetPasswordModel());
  locator.registerFactory(() => FitHome());
  locator.registerFactory(() => DiscoverModel());
  locator.registerFactory(() => DiscoverDetailModel());
  locator.registerFactory(() => BrandListModel());
  locator.registerFactory(() => UserModel());
  locator.registerFactory(() => ProductListModel());
}