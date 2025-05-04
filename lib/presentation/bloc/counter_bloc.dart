import 'package:block_practice_1/domain/use_cases/counter_uc.dart';
import 'package:block_practice_1/presentation/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterUseCase _counterBlocUseCase;

  CounterBloc(this._counterBlocUseCase) : super(CounterState()) {
    on<CounterIncrement>(
      (event, emit) => emit(state.copyWith(counterValue: _counterBlocUseCase.incrementCounter(state.counterValue ?? 0))),
    );
    on<CounterDecrement>(
      (event, emit) => emit(state.copyWith(counterValue: _counterBlocUseCase.decrementCounter(state.counterValue ?? 0))),
    );
    on<CounterReset>((event, emit) => emit(state.copyWith(counterValue: 0)));
  }
}
