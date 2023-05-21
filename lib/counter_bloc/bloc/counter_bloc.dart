import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {

    on<Increment>((event, emit) {
      return emit(CounterState(initialState: state.initialState + 1));
    });

    on<Decrement>((event, emit) {
      return emit(CounterState(initialState: state.initialState - 1));
    });

  }
}
