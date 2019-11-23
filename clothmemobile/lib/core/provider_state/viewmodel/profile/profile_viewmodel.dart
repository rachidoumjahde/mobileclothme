import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/user/user_model.dart';
import 'package:clothme/core/service/user/user_service.dart';

class ProfileViewModel {
  UserService _userService = locator<UserService>();
  List<UserModel> profileData;

  Future getProfileData(String userId, String authHeader) async {
    profileData = (await _userService.getUserProfileData(userId, authHeader)) as List<UserModel>;
    return profileData;
  }

  Future updateProfile(String userId, UserModel userData, String authHeader) async {
    var response = await _userService.updateUser(userId, userData, authHeader);
    return response;
  }
}