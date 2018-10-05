import 'dart:async';

Future<List<int>> getTestData() {
  return Future.delayed(Duration(milliseconds: 3000), () => [1, 2, 3, 4, 5, 6]);
}
