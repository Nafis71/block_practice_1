part of "counter_bloc.dart";

sealed class CounterEvent {} // it only allows its sub classes to extend it only within this file/library scope

final class CounterIncrement extends CounterEvent {}

final class CounterDecrement extends CounterEvent {}

final class CounterReset extends CounterEvent{}