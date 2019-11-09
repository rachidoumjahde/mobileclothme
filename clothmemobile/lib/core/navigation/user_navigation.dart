import 'package:clothme/UI/profile/Profile.dart';
import 'package:clothme/UI/setting/SettingAcount.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';


class ProductRouter {
  static Router router = Router();

  static Handler _profileViewHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => profile());

 // Define the home view handler
  static Handler _settingViewHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => settingAcount());//(params['userId'][0]));


  static void setupRouter() {
    router.define("profile", handler: _profileViewHandler);
    router.define("setting", handler: _settingViewHandler, transitionType: TransitionType.fadeIn);
  }


}