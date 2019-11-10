
import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/base_model.dart';
import 'package:clothme/core/provider_state/view_state/view_state.dart';

class FitViewModel extends BaseModel {
  String errorMessage;

  Future<bool> fitResponse(String userIdText) async {
//    final FitService _fitService = locator<FitService>();
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    // Not a number
    if(userId == null) {
      errorMessage = 'Value is not NUMBER';
      setState(ViewState.Idle);
      return false;
    }

  // var success = await _fitService.getFitProducts(userId);
  // Handle error

    setState(ViewState.Idle);
//    return success;

  }
}