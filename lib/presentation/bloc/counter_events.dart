sealed class CounterEvent {} // it only allows its sub classes to extend it only within this file/library scope

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}

class CounterReset extends CounterEvent{}