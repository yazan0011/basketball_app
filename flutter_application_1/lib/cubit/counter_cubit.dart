import 'package:flutter_application_1/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class counterCubit extends Cubit<counterState> {
  counterCubit() : super(counterAState());
  int teamApoint = 0;
  int teamBpoint = 0;

  void counterIncrement({required String team, required int buttonNmber}) {
    if (team == 'A') {
      teamApoint += buttonNmber;
      emit(counterAState());
    } else if (buttonNmber == 0 && team == 'C') {
      teamApoint = teamBpoint = 0;
    } else {
      teamBpoint += buttonNmber;
      emit(counterBState());
    }
  }

  void resetCounters() {
    teamApoint = 0;
    teamBpoint = 0;
    emit(counterAState()); // Emit a new state to update UI
  }
}
