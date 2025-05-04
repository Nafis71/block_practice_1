class CounterState {
  int? counterValue;

  CounterState({this.counterValue});

  @override
  String toString() {
    return 'CounterState{counterValue: $counterValue}';
  }

  CounterState copyWith({int? counterValue}) => CounterState(counterValue: counterValue ?? this.counterValue);
}
