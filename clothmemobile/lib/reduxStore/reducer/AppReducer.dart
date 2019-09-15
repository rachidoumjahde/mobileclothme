
import 'package:treva_shop_flutter/reduxStore/store/AppState.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false,
//    count: counterReducer(state.count, action),
  );
}