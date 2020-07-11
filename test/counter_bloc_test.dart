
import 'package:blocflutterapp/presentation/bloc/counter_bloc.dart';
import 'package:blocflutterapp/presentation/bloc/counter_state.dart';
import 'package:blocflutterapp/presentation/bloc/coutner_event.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  CounterBloc counterBloc;

  setUp((){
    print("setup invoked...");
    counterBloc = CounterBloc(CounterState.initial());

  });

  tearDown((){
    print("tear down invoked...");
    counterBloc = null;
  });


  group("Test Counter Bloc", () {

    test("Test setup event set the intial value to counter_bloc",(){
      num value = 1;
      counterBloc.add(CounterEvent.setup(value));
//Test expetation should test
      expectLater(counterBloc,
          emitsInOrder([
            isA<InitialState>(), //the current state of the bloc = initial state
            isA<InitialState>(),//the emited  state of the bloc
          ]
          )).
          then((innerValue) {
        expect(counterBloc.state.result, value);
      });

    });

    test("Test setup event set the intial value to counter_bloc",(){
      num value = 1;
      counterBloc.add(CounterEvent.setup(value));
      counterBloc.add(CounterEvent.add(3));

      expectLater(counterBloc, emitsInOrder(
          [
            isA<InitialState>(),//the current state of the bloc
            isA<InitialState>(),//emited state
            isA<IncrementState>(), //emited state
          ]
      )).then((value){
        prints(counterBloc.state.result);
        expect(counterBloc.state.result, 1+3);
      });
    });
  });




}