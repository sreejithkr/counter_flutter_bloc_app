
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';
import 'coutner_event.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState> {

  CounterBloc(CounterState initialState) : super(initialState);

  num _counter = 0;

  @override
  Stream<CounterState> mapEventToState(CounterEvent event)  async* {

    if(event is SetupEvent){
      _counter = event.value;
      yield InitialState(_counter);
    }

    if(event is IncrementEvent){
      _counter += event.value;
      yield CounterState.added(_counter);
    }

    if(event is DecrementEvent){
      _counter -= event.value;
      yield CounterState.added(_counter);
    }

    if(event is MultiplyEvent){
      _counter -= event.value;
      yield CounterState.added(_counter);
    }

    if(event is DividedEvent){
      _counter -= event.value;
      yield CounterState.added(_counter);
    }
  }

}











