class Counter {
  int _value;

  Counter(this._value);

  int get value => this._value;

  increment() {
    _value++;
  }

  decrement() {
    _value--;
  }
}