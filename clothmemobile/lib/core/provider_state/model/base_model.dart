import 'package:clothme/core/provider_state/view_state/view_state.dart';
import 'package:flutter/cupertino.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state;
  ViewState get state => _state;

  void setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }
}