class CounterState {
  int? counterValue;

  CounterState({this.counterValue});

  CounterState copyWith({int? counterValue}) {
    return CounterState(counterValue: counterValue ?? this.counterValue);
  }
}
