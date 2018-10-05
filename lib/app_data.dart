import 'package:flutter/material.dart';

@immutable
class AppData {
  final bool isLoading;
  final List<int> someData;

  AppData({
    this.isLoading = false,
    this.someData = const [],
  });

  AppData copyWith({
    bool isLoading,
    List<int> something,
  }) {
    AppData state = AppData(
      isLoading: isLoading ?? this.isLoading,
      someData: something ?? this.someData,
    );
    return state;
  }
}
