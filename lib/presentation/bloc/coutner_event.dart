abstract class CounterEvent {
  CounterEvent(this.value);

  num value;
  factory CounterEvent.setup(num value) => SetupEvent(value);
  factory CounterEvent.add(num byValue) => IncrementEvent(byValue);
  factory CounterEvent.subtract(num byValue) => DecrementEvent(byValue);
  factory CounterEvent.multiply(num byValue) => MultiplyEvent(byValue);
  factory CounterEvent.divide(num byValue) => DividedEvent(byValue);
}

class SetupEvent extends CounterEvent {
  SetupEvent(num value) : super(value);
}
class IncrementEvent extends CounterEvent {
  IncrementEvent(num value) : super(value);
}
class DecrementEvent extends CounterEvent {
  DecrementEvent(num value) : super(value);
}
class MultiplyEvent extends CounterEvent {
  MultiplyEvent(num value) : super(value);
}
class DividedEvent extends CounterEvent {
  DividedEvent(num value) : super(value);
}