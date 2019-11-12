import 'package:clothme/core/provider_state/locator.dart';
import 'package:clothme/core/provider_state/model/base_model.dart';
import 'package:clothme/core/provider_state/model/fit/fit_model.dart';
import 'package:clothme/core/provider_state/view_state/view_state.dart';
import 'package:clothme/core/service/fit/fit_service.dart';

class FitViewModel extends BaseModel {
  String errorMessage;
  List<FitModel> fitList;

  Future<FitModel> getFitHomeData(String userId) async {
    final FitService _fitService = locator<FitService>();
    setState(ViewState.Busy);


    setState(ViewState.Idle);
//    return fitList;
  }
}