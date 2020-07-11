abstract class CounterState {
  CounterState(this.result);
  num result;
  factory CounterState.initial() => InitialState(0);
  factory CounterState.added(num byValue) => IncrementState(byValue);
  factory CounterState.subtracted(num byValue) => DecrementState(byValue);
  factory CounterState.multiplied(num byValue) => MultiplyState(byValue);
  factory CounterState.divided(num byValue) => DividedState(byValue);
}
class InitialState extends CounterState {
  InitialState(num value) : super(value);
}
class IncrementState extends CounterState {
  IncrementState(num value) : super(value);
}
class DecrementState extends CounterState {
  DecrementState(num value) : super(value);
}
class NonChangeState extends CounterState {
  NonChangeState(num value) : super(value);
}
class MultiplyState extends CounterState {
  MultiplyState(num value) : super(value);
}
class DividedState extends CounterState {
  DividedState(num value) : super(value);
}