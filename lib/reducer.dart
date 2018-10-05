import 'package:test_redux/actions.dart';
import 'package:test_redux/app_data.dart';

AppData reducer(AppData state, action) {
  if (action is FetchSomething) {
    AppData newState = state.copyWith(isLoading: true);
    return newState;
  } else if (action is FetchSomethingCompleted) {
    AppData newState = state.copyWith(isLoading: false, something: action.data);
    return newState;
  }
  return state;
}
