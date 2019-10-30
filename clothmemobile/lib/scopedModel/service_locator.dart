import 'package:clothme/UI/fit/FitHome.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services


  // Register models
  locator.registerFactory<FitHome>(() => FitHome());

}