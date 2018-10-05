
abstract class Action {}

class FetchSomething implements Action {}

class FetchSomethingCompleted implements Action {
  final List<int> data;

  FetchSomethingCompleted(this.data);
}
