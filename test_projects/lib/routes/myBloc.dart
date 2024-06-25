import 'package:flutter_bloc/flutter_bloc.dart';

import 'myEvents.dart';
import 'myStates.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateA());

  @override
  Stream<MyState> mapEventToState(MyEvent event) async* {
    switch (event) {
      case MyEvent.eventA:
        yield StateA();
        break;
      case MyEvent.eventB:
        yield StateB();
        break;
      case MyEvent.eventC:
        yield StateC();
        break;
    }
  }
}
