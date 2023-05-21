part of 'counter_bloc.dart';

class CounterState extends Equatable {

  int initialState;

  CounterState({required this.initialState});
  
  @override
  List<Object> get props => [initialState];
}

class CounterInitial extends CounterState {
  CounterInitial() : super(initialState: 0);
}
