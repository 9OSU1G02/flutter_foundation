import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'randomized_change_notifier.freezed.dart';

@freezed
class RandomizedState with _$RandomizedState {
  const RandomizedState._();
  const factory RandomizedState({
    int? generatedNumber,
    @Default(0) int minimum,
    @Default(0) int maximum,
  }) = _RandomizedState;
}

class RandomizedStateNotifier extends StateNotifier<RandomizedState> {
  RandomizedStateNotifier() : super(const RandomizedState());
  final _randomGenerator = Random();

  void generateRandomNumber() {
    state = state.copyWith(
      generatedNumber: _randomGenerator.nextInt(state.maximum - state.minimum) +
          state.minimum,
    );
  }

  void setMinimum(int value) {
    state = state.copyWith(minimum: value);
  }

  void setMaximum(int value) {
    state = state.copyWith(maximum: value);
  }
}
