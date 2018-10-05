import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:test_redux/app_data.dart';
import 'package:test_redux/store_configuration.dart';
import 'package:test_redux/test_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return StoreProvider(
      store: configureStore(),
      child: MaterialApp(
        title: "redux-starter",
        home: StoreConnector(
          converter: (Store<AppData> store) {
            return store;
          },
          builder: (context, Store<AppData> store) {
            return TestScreen();
          },
        ),
      ),
    );
  }
}
