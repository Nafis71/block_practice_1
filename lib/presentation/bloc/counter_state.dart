class CounterState {
  int? counterValue;

  CounterState({this.counterValue});

  CounterState copyWith({int? counterValue}) => CounterState(counterValue: counterValue ?? this.counterValue);
}
