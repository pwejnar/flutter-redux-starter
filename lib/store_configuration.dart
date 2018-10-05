import 'package:redux/redux.dart';
import 'package:test_redux/app_data.dart';
import 'package:test_redux/reducer.dart';
import 'package:test_redux/middleware.dart';

Store<AppData> configureStore() {
  return Store<AppData>(
    combineReducers([
      reducer,
    ]),
    initialState: AppData(),
    middleware: [
      fetchSomething,
    ],
  );
}
