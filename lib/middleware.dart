import 'package:redux/redux.dart';
import 'package:test_redux/actions.dart';
import 'package:test_redux/app_data.dart';
import 'package:test_redux/service.dart';

fetchSomething(Store<AppData> store, action, NextDispatcher next) async {
  if (action is FetchSomething) {
    List<int> data = await getTestData();
    store.dispatch(FetchSomethingCompleted(data));
  }

  next(action);
}
