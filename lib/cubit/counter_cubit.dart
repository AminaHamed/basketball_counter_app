import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementCounter({required String team, required int btnNumber}) {
    if (team == 'A') {
      teamAPoints += btnNumber;
      emit(CounterAState());
    } else {
      teamBPoints += btnNumber;
      emit(CounterBState());
    }
  }

  void resetCounters() {
    teamBPoints = teamAPoints = 0;
    emit(CounterResetState());
  }
}
