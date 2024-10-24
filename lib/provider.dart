import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counternotifier.dart';
import 'counterstate.dart';

final providerCounter = StateNotifierProvider<Counternotifier, Counterstate>(
    (ref) => Counternotifier(Counterstate(counter: 0)));
