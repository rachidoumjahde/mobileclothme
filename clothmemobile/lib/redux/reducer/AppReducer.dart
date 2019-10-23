
import 'package:treva_shop_flutter/redux/store/AppState.dart';

AppState appReducer(AppState state, dynamic ction) {
  return new AppState(
    isLoading: false,
//    count: counterReducer(state.count, action),
  );
}