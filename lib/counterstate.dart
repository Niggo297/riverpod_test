class Counterstate {
  late int counter;

  Counterstate({this.counter = 0});

  Counterstate copyWith({int? counter}) {
    return Counterstate(counter: counter ?? this.counter);
  }
}


// counter: counter ?? this.counter 
// wenn counter nicht null ist, dann nimm counter, ansonsten nimm this.counter


// counter  != null ? counter : this.counter
