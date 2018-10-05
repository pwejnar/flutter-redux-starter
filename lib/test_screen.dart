import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:test_redux/actions.dart';
import 'package:test_redux/app_data.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      rebuildOnChange: true,
      distinct: true,
      converter: (Store<AppData> store) {
        return store;
      },
      builder: (context, Store<AppData> store) => Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                store.dispatch(FetchSomething());
              },
            ),
            body: Container(
              color: Colors.transparent,
              child: ListView.builder(
                itemCount: store.state.someData.length,
                itemBuilder: (_, index) =>
                    Text(store.state.someData[index].toString()),
              ),
            ),
          ),
    );
  }
}
