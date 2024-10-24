import 'counterstate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counternotifier extends StateNotifier<Counterstate> {
  Counternotifier(Counterstate state) : super(state);

  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
