
import 'package:clothme/core/provider_state/model/base_model.dart';
import 'package:clothme/core/provider_state/view_state/view_state.dart';

class SignInViewModel extends BaseModel {
  String errorMessage;

  Future<bool> signin(String userIdText) async {
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    // Not a number

  }
}